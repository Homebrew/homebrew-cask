cask 'notion' do
  version '2.0.1'
  sha256 'de716410e022171091fc1f78ee2903dcf15c65bded286e9fe3e8803d3eab3d8c'

  # desktop-release.notion-static.com was verified as official when first introduced to the cask
  url "https://desktop-release.notion-static.com/Notion-#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/send_post_request.cgi?url=https://www.notion.so/api/v3/getDesktopDownloadUrl&params=%7B"platform":"mac"%7D'
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
