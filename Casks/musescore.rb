cask 'musescore' do
  version '3.1.0.22425'
  sha256 '5c5722a429223f320507008aa119f48551e712f1f26cfdf700772b8f3acb58b1'

  # musescore.com was verified as official when first introduced to the cask
  url "https://download.musescore.com/releases/MuseScore-#{version.major_minor}/MuseScore-#{version.major_minor_patch}.dmg"
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
