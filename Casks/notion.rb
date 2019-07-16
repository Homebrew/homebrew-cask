cask 'notion' do
  version '1.0.7'
  sha256 '61df08fac6503ed868f1649b2628ecd84c32821d24a53c159740b476321e5e8c'

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
