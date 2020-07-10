cask 'insomnia-designer' do
  version '2020.3.0'
  sha256 'b122aeec39c9cb162b4be89f71edb26b08bb55f106a45823ff909c171b996d62'

  # github.com/Kong/insomnia/ was verified as official when first introduced to the cask
  url "https://github.com/Kong/insomnia/releases/download/designer%40#{version}/Insomnia.Designer-#{version}.dmg"
  appcast 'https://api.insomnia.rest/changelog.json?app=com.insomnia.designer'
  name 'Insomnia Designer'
  homepage 'https://insomnia.rest/'

  auto_updates true

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
