cask 'keycue' do
  version '9.5'
  sha256 '0d3f38a2ce0327b8adbdcc9e6877dda536fab7b5e8d620a52b4c672758aea8d9'

  url "https://www.ergonis.com/downloads/products/keycue/KeyCue#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ergonis.com/downloads/keycue-install.dmg',
          configuration: version.no_dots
  name 'KeyCue'
  homepage 'https://www.ergonis.com/products/keycue/'

  app 'KeyCue.app'

  zap trash: [
               '~/Library/Application Support/KeyCue',
               '~/Library/Preferences/com.macility.keycue.plist',
             ]
end
