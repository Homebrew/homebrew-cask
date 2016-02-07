cask 'send-to-kindle' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/sendtokindle/SendToKindleForMac-installer.pkg'
  name 'Send to Kindle'
  homepage 'https://www.amazon.com/gp/sendtokindle/mac'
  license :gratis

  pkg 'SendToKindleForMac-installer.pkg'

  uninstall launchctl: 'com.amazon.sendtokindle.launcher',
            pkgutil:   'com.amazon.SendToKindleMacInstaller.pkg'

  zap       delete: [
                      '~/Library/Application Support/Amazon/SendToKindle',
                      '~/Library/Preferences/com.amazon.SendToKindle.plist',
                      '~/Library/Logs/SendToKindleInstall.log',
                    ]
end
