class Appcode < Cask
  version '3.0.2'
  sha256 'f6de20604045b3cf7bc398d5b9ead37b4dd02329385566745b098ce5ad048187'

  url 'http://download.jetbrains.com/objc/AppCode-3.0.2.dmg'
  homepage 'http://www.jetbrains.com/objc/'

  link 'AppCode.app'

  after_install do
    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion 1.6+", "#{destination_path}/AppCode.app/Contents/Info.plist"
  end
end
