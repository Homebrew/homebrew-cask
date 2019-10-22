cask 'curio' do
  version '13020.7'
  sha256 '329c22433455cc72ed48dc181248ad1e95a3e33ab8fd9e87c572b70da97296a7'

  url "https://www.zengobi.com/downloads/Curio#{version.no_dots}.zip"
  appcast 'https://www.zengobi.com/appcasts/Curio13HLwLK2C84LaKptcz.xml'
  name 'Curio'
  homepage 'https://zengobi.com/curio/'

  depends_on macos: '>= :high_sierra'

  app 'Curio.app'
end
