cask 'insomnia-designer' do
  version '2020.1.3'
  sha256 '35de4caeac06a7e62b9898db1f75e20212c1a52df9af578ec78454e817ba566d'

  # github.com/Kong/insomnia/ was verified as official when first introduced to the cask
  url "https://github.com/Kong/insomnia/releases/download/designer%40#{version}/Insomnia.Designer-#{version}.dmg"
  appcast 'https://insomnia.rest/changelog/index.xml'
  name 'Insomnia Designer'
  homepage 'https://insomnia.rest/'

  app 'Insomnia Designer.app'

  zap trash: [
               '~/Library/Application Support/Insomnia Designer',
               '~/Library/Caches/com.insomnia.designer',
               '~/Library/Caches/com.insomnia.designer.ShipIt',
               '~/Library/Logs/Insomnia Designer',
               '~/Library/Preferences/com.insomnia.designer.plist',
               '~/Library/Saved Application State/com.insomnia.designer.savedState',
             ]
end
