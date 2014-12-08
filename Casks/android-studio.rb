cask :v1 => 'android-studio' do
  version '1.0.0'
  sha256 '0b580495e13e638c90fe1708e6a5d7cdf75df3f7447a9542af9d87af875891de'

  url "https://dl.google.com/dl/android/studio/install/#{version}/android-studio-ide-135.1629389.dmg"
  homepage 'https://developer.android.com/sdk/index.html'
  license :apache

  app 'Android Studio.app'

  caveats <<-EOS.undent
    If you have Java 7 or above installed, you may want to use it as Android Studio JDK, for example:

    export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk

    Please take a look at this post: http://tools.android.com/recent/androidstudio1rc3_releasecandidate3released
  EOS
end
