class AndroidStudioCanary < Cask
  version '0.8.13'
  sha256 '8718a91fead9d90e24272d39a9140b131c2c411d38d1e26dc825cd0c5fd41e15'

  url "http://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-135.1404660-mac.zip"
  homepage 'http://tools.android.com/download/studio'
  license :unknown

  app 'Android Studio.app'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :JVMOptions:JVMVersion 1.6+', "#{destination_path}/Android Studio.app/Contents/Info.plist"
  end
end
