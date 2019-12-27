cask 'musescore' do
  version '3.3.4'
  sha256 '3c7f096313f81bf1f076fc97a88b1ad477ea914e4e4a9dbb9ad4c8e273e0b3e5'

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
