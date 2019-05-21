cask 'local-by-flywheel' do
  version '3.2.0'
  sha256 '37f392e3eea4bbf1b9e56ba626f7a173ae82f9abf5cc697cc1c141d52e31fca2'

  # local-by-flywheel-flywheel.netdna-ssl.com/releases was verified as official when first introduced to the cask
  url "https://local-by-flywheel-flywheel.netdna-ssl.com/releases/#{version.dots_to_hyphens}/local-by-flywheel-#{version.dots_to_hyphens}-mac.zip"
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
