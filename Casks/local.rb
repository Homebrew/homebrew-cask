cask 'local' do
  version '5.2.5'
  sha256 '56e01b0362a10ca1e11b814496780d99f146860fdb61463cf757ea18b94a6e9c'

  # local-by-flywheel-flywheel.netdna-ssl.com/releases was verified as official when first introduced to the cask
  url "https://local-by-flywheel-flywheel.netdna-ssl.com/releases/#{version.dots_to_hyphens}/local-#{version.dots_to_hyphens}-mac.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://local-by-flywheel-flywheel.netdna-ssl.com/latest/mac',
          configuration: version.dots_to_hyphens
  name 'Local by Flywheel'
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
