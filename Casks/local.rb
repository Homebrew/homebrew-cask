cask 'local' do
  version '5.6.3,4270'
  sha256 '6feb95787c8d145674fc9183efdaab4087b1017c47cb467628b02113cc78395d'

  url "https://cdn.localwp.com/releases-stable/#{version.before_comma}+#{version.after_comma}/local-#{version.before_comma}-mac.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://cdn.localwp.com/stable/latest/mac'
  name 'Local'
  homepage 'https://localwp.com/'

  app 'Local.app'

  zap trash: [
               '~/Library/Application Support/Local by Flywheel',
               '~/Library/Logs/local-by-flywheel.log',
               '~/Library/Preferences/com.getflywheel.local.plist',
               '~/Library/Preferences/com.getflywheel.local.helper.plist',
               '~/Library/Saved Application State/com.getflywheel.local.savedState',
             ]
end
