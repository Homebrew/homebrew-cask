cask 'snapheal-pro' do
  version '1.6.1193'
  sha256 '0989dcf995c1058c3f80f8898a8f590e079ae1aebedfd7f84dbef6a8bed72874'

  # amazonaws.com/SnaphealCK was verified as official when first introduced to the cask
  url "https://creativekit.s3.amazonaws.com/SnaphealCK/SnaphealCKNA_Distribution_v#{version.dots_to_underscores}.zip"
  appcast 'http://cdn.macphun.com/updates/SnaphealMacPRO/appcast.xml',
          checkpoint: '41be23f355c922362ddf47f2847cfd5050122ecfb5a1e57860187f16b04765b6'
  name 'Macphun Snapheal Pro'
  homepage 'https://macphun.com/snapheal/'

  app 'Snapheal Pro.app'

  uninstall quit: 'com.macphun.snaphealpro'

  zap delete: [
                '~/Library/Caches/com.macphun.snaphealpro',
                '~/Library/Application Support/Snapheal Pro',
                '~/Library/Preferences/com.macphun.snaphealpro.plist',
              ]
end
