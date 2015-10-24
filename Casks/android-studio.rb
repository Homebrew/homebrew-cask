cask :v1 => 'android-studio' do
  version '1.4.0.10'
  sha256 '1168faf59ffbe485bfe0e95e80bd9672a3ae5599efd2b720cf4b825bd859ffa0'

  # google.com is the official download host per the vendor homepage
  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2288178-mac.zip"
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
