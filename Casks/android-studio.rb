class AndroidStudio < Cask
  version '0.8.9'
  sha256 'ee89cc544829cb62611ac7686254c4fc2eff00fdb6ab9a49330c97b8e8e952ac'

  url "http://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-135.1404660-mac.zip"
  homepage 'http://tools.android.com/download/studio'
  license :unknown

  app 'Android Studio.app'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :JVMOptions:JVMVersion 1.6+', "#{destination_path}/Android Studio.app/Contents/Info.plist"
  end
end
