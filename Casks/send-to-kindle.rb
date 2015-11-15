cask :v1 => 'send-to-kindle' do
  version '1.0.0.221'
  sha256 '87d21d392a5439dfafa5ee44ba68ea76fae06db7fcb38b8e848bc1ce1fb982e3'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/sendtokindle/SendToKindleForMac-installer-v#{version}.pkg"
  name 'Send to Kindle'
  homepage 'https://www.amazon.com/gp/sendtokindle/mac'
  license :gratis

  pkg "SendToKindleForMac-installer-v#{version}.pkg"

  uninstall :launchctl => 'com.amazon.sendtokindle.launcher',
            :pkgutil   => 'com.amazon.SendToKindleMacInstaller.pkg'
  zap       :delete    => [
                           '~/Library/Application Support/Amazon/SendToKindle',
                           '~/Library/Preferences/com.amazon.SendToKindle.plist',
                           '~/Library/Logs/SendToKindleInstall.log',
                          ]
end
