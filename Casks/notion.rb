cask 'notion' do
  version '0.2.0'
  sha256 '08053ceae79878bb5f5be55fc2dbb7fbdbcb81ea309c3cd8049a8da677195bc8'

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
