class Phpstorm < Cask
  version '7.1.3'
  sha256 '37ab8cb0739388da77d226fbdbf956ef441a8d7cb59e316e22815d57d11f6a1d'

  url 'http://download.jetbrains.com/webide/PhpStorm-7.1.3.dmg'
  homepage 'http://www.jetbrains.com/phpstorm/'

  link 'PhpStorm.app'

  postflight do
    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion 1.6+", "#{destination_path}/PhpStorm.app/Contents/Info.plist"
  end
end
