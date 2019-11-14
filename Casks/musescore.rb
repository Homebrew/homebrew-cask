cask 'musescore' do
  version '3.3.2'
  sha256 '08aaff04f5a0c9d99ece9ae378e4e848f22c07980d1dc1e79ea368dc33de607d'

  # github.com/musescore/MuseScore was verified as official when first introduced to the cask
  url "https://github.com/musescore/MuseScore/releases/download/v#{version}/MuseScore-#{version}.dmg"
  appcast 'https://github.com/musescore/MuseScore/releases.atom'
  name 'MuseScore'
  homepage 'https://musescore.org/'

  depends_on macos: '>= :yosemite'

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
