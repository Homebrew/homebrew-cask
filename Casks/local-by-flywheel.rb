cask 'local-by-flywheel' do
  version '2.4.5'
  sha256 '7bd8d2d80b7f33d144a31e4763c3349ec05bab63301d98fd84a1779385e2efbe'

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
