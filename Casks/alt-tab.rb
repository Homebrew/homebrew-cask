cask 'alt-tab' do
  version '1.4.6'
  sha256 '5dbb441bea27ac38ec38f246b31f5c18b63ceef1a4bcced6b08a6a8bef3ec1be'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'AltTab.app'
end
