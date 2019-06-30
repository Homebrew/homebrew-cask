cask 'musescore' do
  version '3.2.2'
  sha256 '6b238ee08096a15e153c5da43ede03ea887f10edd696bc15dca1ff1db9266ffc'

  # github.com/musescore/MuseScore was verified as official when first introduced to the cask
  url "https://github.com/musescore/MuseScore/releases/download/v#{version}/Musescore-#{version}.dmg"
  appcast 'https://github.com/musescore/MuseScore/releases.atom'
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
