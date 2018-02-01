cask 'notion' do
  version '0.1.13'
  sha256 '26129cfac6cd6169ec1141cac2b172c4e1b7296bbf17db7358e322ff09a4d714'

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
