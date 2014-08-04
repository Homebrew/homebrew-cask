class SendToKindle < Cask
  version '1.0.0.218'
  sha256 '9c3a9eca8fe9f09ff43dfb4132a8be163ef517008979075df3d947699c421494'

  url 'https://s3.amazonaws.com/sendtokindle/SendToKindleForMac-installer-v1.0.0.218.pkg'
  homepage 'http://www.amazon.com/gp/sendtokindle/mac'

  install 'SendToKindleForMac-installer-v1.0.0.218.pkg'
  uninstall :launchctl => 'com.amazon.sendtokindle.launcher',
            :pkgutil   => 'com.amazon.SendToKindleMacInstaller.pkg'
end
