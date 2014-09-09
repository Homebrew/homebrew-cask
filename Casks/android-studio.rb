class AndroidStudio < Cask
  version '0.8.6 build-135.1339820'
  sha256 '3a9f65434a2381019f4487481331f539a69b09b8ea81a8b4dfff9c6a126423f0'

  url 'http://dl.google.com/android/studio/install/0.8.6/android-studio-bundle-135.1339820-mac.dmg'
  homepage 'https://developer.android.com/sdk/installing/studio.html'

  link 'Android Studio.app'

  postflight do
    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion 1.6+", "#{destination_path}/Android Studio.app/Contents/Info.plist"
  end
end
