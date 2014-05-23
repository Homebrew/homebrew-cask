class Appcode < Cask
  url 'http://download.jetbrains.com/objc/AppCode-3.0.dmg'
  homepage 'http://www.jetbrains.com/objc/'
  version '3.0'
  sha256 'd8e9e72fe1a9050148edb971c88c39c22adf9a1499f34dd8b29fce4e6308d35e'
  link 'AppCode.app'
  after_install do
    java_ver = "1.6*"
    if (!File.exists?("/System/Library/Java/JavaVirtualMachines/1.6.0.jdk") and !Dir.glob('/Library/Java/JavaVirtualMachines/jdk1.8.0_*.jdk').empty?)
      java_ver = "1.8*"
    end

    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion #{java_ver}", "#{destination_path}/AppCode.app/Contents/Info.plist"
  end
end
