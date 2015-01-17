cask :v1 => 'android-studio' do
  version '1.0.2'
  sha256 'bfbbf184997bb50d14e29efdab89935118bb1dc9c3a4901396782011d21cd797'

  # google.com is the official download host per the vendor homepage
  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-135.1653844-mac.zip"
  name 'Android Studio'
  homepage 'https://developer.android.com/sdk/'
  license :apache

  app 'Android Studio.app'

  caveats <<-EOS.undent
    If you have Java 7 or above installed, you may want to use it as Android Studio JDK, for example:

    export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk

    Please take a look at this post: http://tools.android.com/recent/androidstudio1rc3_releasecandidate3released
  EOS
end
