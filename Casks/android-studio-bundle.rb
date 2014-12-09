cask :v1 => 'android-studio-bundle' do
  version '1.0.0 build-135.1629389'
  sha256 '0b580495e13e638c90fe1708e6a5d7cdf75df3f7447a9542af9d87af875891de'

  url 'https://dl.google.com/dl/android/studio/install/1.0.0/android-studio-ide-135.1629389.dmg'
  homepage 'http://developer.android.com/sdk/installing/studio.html'
  license :unknown

  app 'Android Studio.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.7+')
  end
end
