class Appcode < Cask
  version '3.0.5'
  sha256 '0fea414ad509bedc2bcc014e6109109b68a5bc0f033f79cb39a1e1b7310d2a3b'

  url "http://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  homepage 'http://www.jetbrains.com/objc/'

  link 'AppCode.app'

  postflight do
    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion 1.6+", "#{destination_path}/AppCode.app/Contents/Info.plist"
  end
end
