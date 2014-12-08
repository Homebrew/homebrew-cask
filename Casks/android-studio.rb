cask :v1 => 'android-studio' do
  version '1.0.0'
  sha256 '9599e93633e1d6041d7bb739a941ec4debc9b46a3d4c0080b0f58559d27cb329'

  url "http://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-135.1629389-mac.zip"
  homepage 'http://tools.android.com/download/studio'
  license :unknown

  app 'Android Studio.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
