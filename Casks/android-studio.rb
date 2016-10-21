cask 'android-studio' do
  version '2.2.2.0,145.3360264'
  sha256 'c882c96643860a20ff1c4ced0e11ca72e613c9c2b9450a312c56f7c2678730b9'

  # google.com/dl/android/studio was verified as official when first introduced to the cask
  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.zip"
  name 'Android Studio'
  homepage 'https://developer.android.com/sdk/'

  app 'Android Studio.app'

  zap delete: [
                "~/Library/Preferences/AndroidStudio#{version.major_minor}",
                '~/Library/Preferences/com.google.android.studio.plist',
                "~/Library/Application Support/AndroidStudio#{version.major_minor}",
                "~/Library/Logs/AndroidStudio#{version.major_minor}",
                "~/Library/Caches/AndroidStudio#{version.major_minor}",
              ],
      rmdir:  '~/AndroidStudioProjects'
end
