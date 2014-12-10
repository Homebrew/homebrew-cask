cask :v1 => 'android-studio' do
  version '1.0.0'
  sha256 '0b580495e13e638c90fe1708e6a5d7cdf75df3f7447a9542af9d87af875891de'

  url "https://dl.google.com/dl/android/studio/install/1.0.0/android-studio-ide-135.1629389.dmg"
  homepage 'http://tools.android.com/download/studio'
  license :unknown

  app 'Android Studio.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
