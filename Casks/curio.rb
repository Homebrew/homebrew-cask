cask 'curio' do
  version '13011.4'
  sha256 '86215b58e47644e80ec95aeb71fc066a27d7dd517ff40827c771740d9f31791f'

  url "https://www.zengobi.com/downloads/Curio#{version.no_dots}.zip"
  appcast 'https://www.zengobi.com/appcasts/Curio13HLwLK2C84LaKptcz.xml'
  name 'Curio'
  homepage 'https://zengobi.com/curio/'

  depends_on macos: '>= :high_sierra'

  app 'Curio.app'
end
