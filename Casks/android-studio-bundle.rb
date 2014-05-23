class AndroidStudioBundle < Cask
  url 'https://dl.google.com/android/studio/install/0.5.2/android-studio-bundle-135.1078000-mac.dmg'
  homepage 'http://developer.android.com/sdk/installing/studio.html'
  version '0.5.2 build-135.1078000'
  sha256 'fbb0500af402c8fa5435dfac65e16101a70a22c4c8930f072db52ac41556fb8e'
  link 'Android Studio.app'
  after_install do
    java_ver = "1.6*"
    if (!File.exists?("/System/Library/Java/JavaVirtualMachines/1.6.0.jdk") and !Dir.glob('/Library/Java/JavaVirtualMachines/jdk1.8.0_*.jdk').empty?)
      java_ver = "1.8*"
    end

    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion #{java_ver}", "#{destination_path}/Android Studio.app/Contents/Info.plist"
  end
end
