class Appcode < Cask
  version '3.0.4'
  sha256 'c94d77401bd4551d40013db4e636fe21e1683d0d916be24cc713c69fe1a0a3e3'

  url 'http://download.jetbrains.com/objc/AppCode-3.0.4.dmg'
  homepage 'http://www.jetbrains.com/objc/'

  link 'AppCode.app'

  postflight do
    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion 1.6+", "#{destination_path}/AppCode.app/Contents/Info.plist"
  end
end
