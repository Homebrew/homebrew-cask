class AndroidStudio < Cask
  version '0.8.4 build-135.1295215'
  sha256 '595d0f24bc02e3be3ff3d2e4dc7c623d3bbf5a57fd26b48c3613e9292e8fc5ec'

  url 'https://dl.google.com/dl/android/studio/ide-zips/0.8.4/android-studio-ide-135.1295215-mac.zip'
  homepage 'https://developer.android.com/sdk/installing/studio.html'

  link 'Android Studio.app'
  after_install do
    java_ver = "1.6*"
    if (!File.exists?("/System/Library/Java/JavaVirtualMachines/1.6.0.jdk") and !Dir.glob('/Library/Java/JavaVirtualMachines/jdk1.8.0_*.jdk').empty?)
      java_ver = "1.8*"
    end

    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion #{java_ver}", "#{destination_path}/Android Studio.app/Contents/Info.plist"
  end
end
