cask 'keycue' do
  version '9.6'
  sha256 'd0d7a6b638efad346eca684768997b3c4873eb314f2b104574d7c215ba3b60d9'

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
