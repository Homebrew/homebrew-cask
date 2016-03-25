cask 'android-studio' do
  version '1.5.1.0_2456560'
  sha256 '2fe2ab35d9be1780269f6ade2cf097c5b5dc494ef44fbdd6ce84008609576430'

  # google.com/dl/android/studio was verified as official when first introduced to the cask
  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.sub(%r{_.*}, '')}/android-studio-ide-141.#{version.sub(%r{.*_}, '')}-mac.zip"
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
