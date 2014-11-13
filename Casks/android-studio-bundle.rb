cask :v1 => 'android-studio-bundle' do
  version '0.8.6 build-135.1339820'
  sha256 '3a9f65434a2381019f4487481331f539a69b09b8ea81a8b4dfff9c6a126423f0'

  url 'https://dl.google.com/android/studio/install/0.8.6/android-studio-bundle-135.1339820-mac.dmg'
  homepage 'http://developer.android.com/sdk/installing/studio.html'
  license :unknown

  app 'Android Studio.app'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :JVMOptions:JVMVersion 1.6+', "#{staged_path}/Android Studio.app/Contents/Info.plist"
  end
end
