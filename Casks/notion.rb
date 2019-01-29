cask 'notion' do
  version '0.6.0'
  sha256 '611f28e92a315fd019584c45081b6b9a5932b6f254ec130ce4735fb735e22230'

  # desktop-release.notion-static.com was verified as official when first introduced to the cask
  url "https://desktop-release.notion-static.com/Notion-#{version}.dmg"
  name 'Notion'
  homepage 'https://www.notion.so/'

  app 'Notion.app'

  zap trash: [
               '~/Library/Application Support/Notion',
               '~/Library/Caches/notion.id',
               '~/Library/Logs/Notion',
               '~/Library/Preferences/notion.id.helper.plist',
               '~/Library/Preferences/notion.id.plist',
               '~/Library/Saved Application State/notion.id.savedState',
               '~/Library/WebKit/notion.id',
             ]
end
