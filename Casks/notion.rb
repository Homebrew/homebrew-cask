cask 'notion' do
  version '0.3.0'
  sha256 '6cfde9d52086fe1888477fa226c0c8df16360759352ca7d5c4ee6603f3b37eba'

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
