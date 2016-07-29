cask 'snapheal-pro' do
  version '1.5.1118'
  sha256 'b6b46a70f270872a5b9cd32f8366070227af4e70d37b054b3b79280d425b2aa2'

  # amazonaws.com/SnaphealCK was verified as official when first introduced to the cask
  url "https://creativekit.s3.amazonaws.com/SnaphealCK/SnaphealCKNA_Distribution_v#{version.dots_to_underscores}.zip"
  appcast 'http://cdn.macphun.com/updates/SnaphealMacPRO/appcast.xml',
          checkpoint: '54ac7c51ad3eebd02ec3b5b9cc7e66eba67935c5035687ab59fbf7b05ea4c6e3'
  name 'Macphun Snapheal Pro'
  homepage 'https://macphun.com/snapheal/'
  license :commercial

  app 'Snapheal Pro.app'

  uninstall quit: 'com.macphun.snaphealpro'

  zap delete: [
                '~/Library/Caches/com.macphun.snaphealpro',
                '~/Library/Application Support/Snapheal Pro',
                '~/Library/Preferences/com.macphun.snaphealpro.plist',
              ]
end
