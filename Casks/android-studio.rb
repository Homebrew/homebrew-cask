cask :v1 => 'android-studio' do
  version '0.8.14'
  sha256 '05eb79f0c4025f510ff02d7205157eb94d42074a2d89c8a5ba4cbead1187948f'

  url "http://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-135.1538390-mac.zip"
  homepage 'http://tools.android.com/download/studio'
  license :unknown

  app 'Android Studio.app'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :JVMOptions:JVMVersion 1.6+', "#{staged_path}/Android Studio.app/Contents/Info.plist"
  end
end
