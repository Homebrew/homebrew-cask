cask 'amazon-drive' do
  version :latest
  sha256 :no_check

  # d29x207vrinatv.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d29x207vrinatv.cloudfront.net/mac/AmazonDriveInstaller.dmg'
  name 'Amazon Drive'
  homepage 'https://www.amazon.com/clouddrive/home/'

  installer script: {
                      executable: 'Amazon Drive Installer.app/Contents/MacOS/Amazon Drive Installer',
                      args:       ['--quiet'],
                    }

  uninstall quit:   'com.amazon.clouddrive.mac',
            delete: '/Applications/Amazon Drive.app'

  zap trash: [
               '~/Library/Logs/Amazon Cloud Drive/',
               '~/Library/Logs/Amazon Drive/',
               '~/Library/Preferences/com.amazon.clouddrive.mac.plist',
               '~/Library/Application Scripts/Amazon Cloud Drive/',
               '~/Library/Application Support/Amazon Drive/',
               '~/Library/Caches/com.amazon.clouddrive.mac/',
               '~/Library/Cookies/com.amazon.clouddrive.mac.binarycookies',
             ]
end
