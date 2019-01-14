cask 'musescore' do
  version '3.0.0.20137'
  sha256 '02d327851ec4e0cfaf7ba90b89269a07c5de1383f918d52a78df6220d6c58a05'

  # ftp.osuosl.org/pub/musescore was verified as official when first introduced to the cask
  url "https://ftp.osuosl.org/pub/musescore/releases/MuseScore-#{version.major_minor_patch}/MuseScore-#{version.major_minor_patch}.dmg"
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
