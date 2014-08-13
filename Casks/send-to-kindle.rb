class SendToKindle < Cask
  version '1.0.0.220'
  sha256 'f43009bb0e48ed7e5a750a90163a6362f49e6518c698c5c49be0dce0d01fe3af'

  url 'https://s3.amazonaws.com/sendtokindle/SendToKindleForMac-installer-v1.0.0.220.pkg'
  homepage 'http://www.amazon.com/gp/sendtokindle/mac'

  install 'SendToKindleForMac-installer-v1.0.0.220.pkg'
  uninstall :launchctl => 'com.amazon.sendtokindle.launcher',
            :pkgutil   => 'com.amazon.SendToKindleMacInstaller.pkg'
end
