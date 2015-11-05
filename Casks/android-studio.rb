cask :v1 => 'android-studio' do
  version '1.4.1.0'
  sha256 'b20a6a76c07bcc770b9931705fdefac144a11ba093cf9140d328bcfe4140c387'

  # google.com is the official download host per the vendor homepage
  url 'https://dl.google.com/dl/android/studio/ide-zips/1.4.1.0/android-studio-ide-141.2343393-mac.zip'
  name 'Android Studio'
  homepage 'https://developer.android.com/sdk/'
  license :apache

  app 'Android Studio.app'

  caveats <<-EOS.undent
    #{token} requires Java. You can install the latest version with
    brew cask install java
  EOS
  zap :delete => [
    '~/Library/Preferences/AndroidStudio*',
    '~/Library/Preferences/com.google.android.studio.plist',
    '~/Library/Application Support/AndroidStudio*',
    '~/Library/Logs/AndroidStudio*',
    '~/Library/Caches/AndroidStudio*',
  ],
  :rmdir => '~/AndroidStudioProjects'
end
