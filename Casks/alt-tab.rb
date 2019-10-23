cask 'alt-tab' do
  version '1.4.7'
  sha256 '88c40c907487f40b83dd8ea5b98ad88d851b7f0369e23b904920298129113491'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'AltTab.app'
end
