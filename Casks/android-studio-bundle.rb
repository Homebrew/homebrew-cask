class AndroidStudioBundle < Cask
  version '0.8.0 build-135.1245622'
  sha256 '7174b6d45c89e986e4a8495078559a161d4b9e091bf6a3556a0237ff5cacfdef'

  url 'https://dl.google.com/android/studio/install/0.8.0/android-studio-bundle-135.1245622-mac.dmg'
  homepage 'http://developer.android.com/sdk/installing/studio.html'

  link 'Android Studio.app'
  after_install do
    java_ver = "1.6*"
    if (!File.exists?("/System/Library/Java/JavaVirtualMachines/1.6.0.jdk") and !Dir.glob('/Library/Java/JavaVirtualMachines/jdk1.8.0_*.jdk').empty?)
      java_ver = "1.8*"
    end

    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion #{java_ver}", "#{destination_path}/Android Studio.app/Contents/Info.plist"
  end
end
