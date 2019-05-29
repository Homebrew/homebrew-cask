cask 'curio' do
  version '13010.6'
  sha256 'f320e5ca9fa186cf342f09c63938d297d6ce286c9f9d8d91490871456e7d1690'

  url "https://www.zengobi.com/downloads/Curio#{version.no_dots}.zip"
  appcast 'https://www.zengobi.com/appcasts/Curio13HLwLK2C84LaKptcz.xml'
  name 'Curio'
  homepage 'https://zengobi.com/curio/'

  depends_on macos: '>= :high_sierra'

  app 'Curio.app'
end
