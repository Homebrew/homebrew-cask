cask 'musescore' do
  version '3.0.2.20666'
  sha256 '4f31564d3795fe265d229bcebb33999dd41a198be2fca0c6275033019714576a'

  # ftp.osuosl.org/pub/musescore was verified as official when first introduced to the cask
  # 3.0.1 is the last on ftp.osuosl.org/pub/musescore
  # 3.0.2 is available at https://download.musescore.com/releases/MuseScore-3.0.2 (you cannot browse the parent dir). 
  url "https://download.musescore.com/releases/MuseScore-#{version.major_minor_patch}/MuseScore-#{version.major_minor_patch}.dmg"
  appcast "https://sparkle.musescore.org/stable/#{version.major}/macos/appcast.xml"
  name 'MuseScore'
  homepage 'https://musescore.org/'

  depends_on macos: '>= :sierra'

  app "MuseScore #{version.major}.app"
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/mscore.wrapper.sh"
  binary shimscript, target: 'mscore'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/MuseScore #{version.major}.app/Contents/MacOS/mscore' "$@"
    EOS
  end
end
