cask 'notion' do
  version '0.1.14'
  sha256 '45dcc33358ecf88f17eadc4588207aa6b39ff25eb6741707f816894db0a52a6f'

  # desktop-release.notion-static.com was verified as official when first introduced to the cask
  url "https://desktop-release.notion-static.com/Notion-#{version}.dmg"
  name 'Notion'
  homepage 'https://www.notion.so/'

  app 'Notion.app'

  zap trash: [
               '~/Library/Application Support/Notion',
               '~/Library/Preferences/notion.id.helper.plist',
               '~/Library/Preferences/notion.id.plist',
             ]
end
