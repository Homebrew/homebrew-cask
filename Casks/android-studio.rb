class AndroidStudio < Cask
  url 'http://dl.google.com/dl/android/studio/ide-zips/0.5.8/android-studio-ide-135.1155795-mac.zip'
  homepage 'https://developer.android.com/sdk/installing/studio.html'
  version '0.5.8 build-135.1155795'
  sha256 '5209b2a01d42d8102e31cbe1c41bb8554cd0617414c08bfc276b62f9bae11e40'
  link 'Android Studio.app'
  after_install do
    java_ver = "1.6*"
    if (!File.exists?("/System/Library/Java/JavaVirtualMachines/1.6.0.jdk") and !Dir.glob('/Library/Java/JavaVirtualMachines/jdk1.8.0_*.jdk').empty?)
      java_ver = "1.8*"
    end

    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion #{java_ver}", "#{destination_path}/Android Studio.app/Contents/Info.plist"
  end
end
