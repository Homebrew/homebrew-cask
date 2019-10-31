cask 'musescore' do
  version '3.3.0'
  sha256 '227325d1bac5ec6cf2256fbe29fd731a7b874de252c48d11ac41c9337a23e445'

  # github.com/musescore/MuseScore was verified as official when first introduced to the cask
  url "https://github.com/musescore/MuseScore/releases/download/v#{version.major_minor}/MuseScore-#{version}.dmg"
  appcast 'https://github.com/musescore/MuseScore/releases.atom'
  name 'MuseScore'
  homepage 'https://musescore.org/'

  depends_on macos: '>= :sierra'

  app "MuseScore #{version.major_minor}.app"
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/mscore.wrapper.sh"
  binary shimscript, target: 'mscore'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/MuseScore #{version.major_minor}.app/Contents/MacOS/mscore' "$@"
    EOS
  end
end
