cask :v1 => 'android-studio' do
  version '1.0.1'
  sha256 '2bb8f2ed4f904c71a1d4a4b46eb76e492791f17bf6926a51d7c94ea0e22fc0f5'

  url "https://dl.google.com/dl/android/studio/install/#{version}/android-studio-ide-1641136.dmg"
  homepage 'https://developer.android.com/sdk/index.html'
  license :apache

  app 'Android Studio.app'

  caveats <<-EOS.undent
    If you have Java 7 or above installed, you may want to use it as Android Studio JDK, for example:

    export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk

    Please take a look at this post: http://tools.android.com/recent/androidstudio1rc3_releasecandidate3released
  EOS
end
