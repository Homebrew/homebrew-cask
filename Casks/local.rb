cask 'local' do
  version '5.0.6'
  sha256 'ae2b8d7567ebd0cfebe274222dc95b7603515266f9477a0cac8695cddee12bb5'

  # local-by-flywheel-flywheel.netdna-ssl.com/releases was verified as official when first introduced to the cask
  url "https://local-by-flywheel-flywheel.netdna-ssl.com/releases/#{version.dots_to_hyphens}/local-#{version.dots_to_hyphens}-mac.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://local-by-flywheel-flywheel.netdna-ssl.com/latest/mac',
          configuration: version.dots_to_hyphens
  name 'Local by Flywheel'
  homepage 'https://local.getflywheel.com/'

  depends_on cask: 'virtualbox'

  app 'Local.app'

  zap trash: [
               '~/Library/Application Support/Local by Flywheel',
               '~/Library/Logs/local-by-flywheel.log',
               '~/Library/Preferences/com.getflywheel.local.plist',
               '~/Library/Preferences/com.getflywheel.local.helper.plist',
               '~/Library/Saved Application State/com.getflywheel.local.savedState',
             ]
end
