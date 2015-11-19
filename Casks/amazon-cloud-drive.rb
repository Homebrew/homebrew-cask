cask :v1 => 'amazon-cloud-drive' do
  version :latest
  sha256 :no_check

  # cloudfront.net is the official download host per the vendor homepage
  url 'https://d29x207vrinatv.cloudfront.net/mac/AmazonCloudDriveInstaller.dmg'
  name 'Amazon Cloud Drive App'
  homepage 'https://www.amazon.com/clouddrive/home/'
  license :gratis

  installer :script => 'Amazon Cloud Drive Installer.app/Contents/MacOS/Amazon Cloud Drive Installer',
            :sudo => true

  uninstall :quit => 'com.amazon.clouddrive.mac',
            :delete => '/Applications/Amazon Cloud Drive App.app'

  zap :delete => [
                  '~/Library/Logs/Amazon Cloud Drive/',
                  '~/Library/Preferences/com.amazon.clouddrive.mac.plist',
                  '~/Library/Application Support/Amazon Cloud Drive/',
                  '~/Library/Cookies/com.amazon.clouddrive.mac.binarycookies'
                 ]
end
