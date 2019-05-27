cask 'local-by-flywheel' do
  version '3.2.1'
  sha256 'fa23f7e90b0bdaf670a42da905e43f9c4d0e604aa6cc91c1e9ec351c25b4b6e1'

  # local-by-flywheel-flywheel.netdna-ssl.com/releases was verified as official when first introduced to the cask
  url "https://local-by-flywheel-flywheel.netdna-ssl.com/releases/#{version.dots_to_hyphens}/local-by-flywheel-#{version.dots_to_hyphens}-mac.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://local-by-flywheel-flywheel.netdna-ssl.com/latest/mac',
          configuration: version.dots_to_hyphens
  name 'Local by Flywheel'
  homepage 'https://local.getflywheel.com/'

  depends_on cask: 'virtualbox'

  app 'Local by Flywheel.app'

  zap trash: [
               '~/Library/Application Support/Local by Flywheel',
               '~/Library/Logs/local-by-flywheel.log',
               '~/Library/Preferences/com.getflywheel.local.plist',
               '~/Library/Preferences/com.getflywheel.local.helper.plist',
               '~/Library/Saved Application State/com.getflywheel.local.savedState',
             ]
end
