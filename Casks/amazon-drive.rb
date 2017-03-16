cask 'amazon-drive' do
  version :latest
  sha256 :no_check

  # d29x207vrinatv.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d29x207vrinatv.cloudfront.net/mac/AmazonDriveInstaller.dmg'
  name 'Amazon Drive'
  homepage 'https://www.amazon.com/clouddrive/home/'

  installer script: 'Amazon Drive Installer.app/Contents/MacOS/Amazon Drive Installer'

  uninstall quit:   'com.amazon.clouddrive.mac',
            delete: '/Applications/Amazon Drive.app'

  zap delete: [
                '~/Library/Logs/Amazon Drive/',
                '~/Library/Preferences/com.amazon.clouddrive.mac.plist',
                '~/Library/Application Support/Amazon Drive/',
                '~/Library/Cookies/com.amazon.clouddrive.mac.binarycookies',
              ]
end
