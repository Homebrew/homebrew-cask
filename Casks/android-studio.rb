cask 'android-studio' do
  version '2.0.0.20_143.2739321'
  sha256 'b5311fdc2b16e8244ab96c3bc4c4ef166f501be8348c26e7d9dce34c24a2ae42'

  # google.com/dl/android/studio was verified as official when first introduced to the cask
  url "https://dl.google.com/dl/android/studio/install/#{version.sub(%r{_.*}, '')}/android-studio-ide-#{version.sub(%r{.*_}, '')}-mac.dmg"
  name 'Android Studio'
  homepage 'https://developer.android.com/sdk/'
  license :apache

  app 'Android Studio.app'

  zap delete: [
                '~/Library/Preferences/AndroidStudio*',
                '~/Library/Preferences/com.google.android.studio.plist',
                '~/Library/Application Support/AndroidStudio*',
                '~/Library/Logs/AndroidStudio*',
                '~/Library/Caches/AndroidStudio*',
              ],
      rmdir:  '~/AndroidStudioProjects'

  caveats do
    depends_on_java
  end
end
