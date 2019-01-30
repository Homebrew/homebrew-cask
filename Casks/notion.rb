cask 'notion' do
  version '0.7.0'
  sha256 'e3283491d0a252c9d57bb16362ff76ba75a9a91f087169da84af78d3ad1b8693'

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
