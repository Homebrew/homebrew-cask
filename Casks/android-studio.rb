cask :v1 => 'android-studio' do
  version '1.1.0'
  sha256 '7d31edf46f57c2be12e228fbdb2344c0fb3a4e3fc07b692ec05156c575ef7a61'

  # google.com is the official download host per the vendor homepage
  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-135.1740770-mac.zip"
  name 'Android Studio'
  homepage 'https://developer.android.com/sdk/'
  license :apache

  app 'Android Studio.app'

  caveats <<-EOS.undent
    #{token} requires Java. You can install the latest version with
      brew cask install java
  EOS
end
