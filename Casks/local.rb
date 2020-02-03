cask 'local' do
  version '5.2.3'
  sha256 '0b7af0b61bb3e7c44142d01a2c059394d27ddebc9b116363803bd9856dd6a52b'

  # local-by-flywheel-flywheel.netdna-ssl.com/releases was verified as official when first introduced to the cask
  url "https://local-by-flywheel-flywheel.netdna-ssl.com/releases/#{version.dots_to_hyphens}/local-#{version.dots_to_hyphens}-mac.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://local-by-flywheel-flywheel.netdna-ssl.com/latest/mac',
          configuration: version.dots_to_hyphens
  name 'Local by Flywheel'
  homepage 'https://localbyflywheel.com/'

  app 'Local.app'

  zap trash: [
               '~/Library/Application Support/Local by Flywheel',
               '~/Library/Logs/local-by-flywheel.log',
               '~/Library/Preferences/com.getflywheel.local.plist',
               '~/Library/Preferences/com.getflywheel.local.helper.plist',
               '~/Library/Saved Application State/com.getflywheel.local.savedState',
             ]
end
