cask 'insomnia-designer' do
  version '2020.2.2'
  sha256 'c12f1469eeece6bb4fc0ace3e8b0a44672e8579fb39cc7721f2a9026bd9cc2bf'

  # github.com/Kong/insomnia/ was verified as official when first introduced to the cask
  url "https://github.com/Kong/insomnia/releases/download/designer%40#{version}/Insomnia.Designer-#{version}.dmg"
  appcast 'https://api.insomnia.rest/changelog.json?app=com.insomnia.designer'
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
