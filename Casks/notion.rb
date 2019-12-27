cask 'notion' do
  version '2.0.5'
  sha256 '71ba30264bf3e7238b65d0a8e630d5fc20b79b79584a7201e6eacc6b16d27311'

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
