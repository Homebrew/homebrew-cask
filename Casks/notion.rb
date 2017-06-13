cask 'notion' do
  version :latest
  sha256 :no_check

  url 'https://www.notion.so/desktop/Notion.dmg'
  name 'Notion'
  homepage 'https://www.notion.so/'

  app 'Notion.app'

  zap delete: [
                '~/Library/Application Support/Notion',
                '~/Library/Preferences/notion.id.helper.plist',
                '~/Library/Preferences/notion.id.plist',
              ]
end
