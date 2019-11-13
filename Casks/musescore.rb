cask 'musescore' do
  version '3.3.1'
  sha256 '09a4340b16448c0bd063da45b89b76c48dd2485f5266a28d51ef6fc5ed832d91'

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
