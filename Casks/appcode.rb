class Appcode < Cask
  version '3.0.2'
  sha256 'f6de20604045b3cf7bc398d5b9ead37b4dd02329385566745b098ce5ad048187'

  url 'http://download.jetbrains.com/objc/AppCode-3.0.2.dmg'
  homepage 'http://www.jetbrains.com/objc/'

  link 'AppCode.app'
  after_install do
    java_ver = "1.6*"
    if (!File.exists?("/System/Library/Java/JavaVirtualMachines/1.6.0.jdk") and !Dir.glob('/Library/Java/JavaVirtualMachines/jdk1.8.0_*.jdk').empty?)
      java_ver = "1.8*"
    end

    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion #{java_ver}", "#{destination_path}/AppCode.app/Contents/Info.plist"
  end
end
