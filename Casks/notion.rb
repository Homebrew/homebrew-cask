cask 'notion' do
  version '0.1.6'
  sha256 '5ae990ccf4da265c059766e24a2bf6e0f2991a5115573be0f8f346e052782178'

  url "https://www.notion.so/desktop/Notion-#{version}.dmg"
  name 'Notion'
  homepage 'https://www.notion.so/'

  app 'Notion.app'

  zap delete: [
                '~/Library/Application Support/Notion',
                '~/Library/Preferences/notion.id.helper.plist',
                '~/Library/Preferences/notion.id.plist',
              ]
end
