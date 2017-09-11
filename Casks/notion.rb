cask 'notion' do
  version '0.1.12'
  sha256 '276afc8025b3ea3c470288db88b2a12c9671d902e5fa77e772e099a12a7a5451'

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
