cask 'keycue' do
  version '9.7'
  sha256 'b8bcbea943768ac519d3b6577f673f3194b6f052fccd3abce5c4ec57f6535cde'

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
