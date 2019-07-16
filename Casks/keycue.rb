cask 'keycue' do
  version '9.3'
  sha256 'ea6896168cbca3d78a7f67f5cec89ca30fca433a22654f7fea26744f2a5198bd'

  url "https://www.ergonis.com/downloads/products/keycue/KeyCue#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ergonis.com/downloads/keycue-install.dmg'
  name 'KeyCue'
  homepage 'https://www.ergonis.com/products/keycue/'

  app 'KeyCue.app'

  zap trash: [
               '~/Library/Application Support/KeyCue',
               '~/Library/Preferences/com.macility.keycue.plist',
             ]
end
