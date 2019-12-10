cask 'curio' do
  version '13020.9'
  sha256 '09b500dcfa6e2bb1ff93c0ac6eacd83dbd8ad23f611ba1ec93f3fdff8888c003'

  url "https://www.zengobi.com/downloads/Curio#{version.no_dots}.zip"
  appcast 'https://www.zengobi.com/appcasts/Curio13HLwLK2C84LaKptcz.xml'
  name 'Curio'
  homepage 'https://zengobi.com/curio/'

  depends_on macos: '>= :high_sierra'

  app 'Curio.app'
end
