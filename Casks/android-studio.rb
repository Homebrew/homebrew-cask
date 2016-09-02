cask 'android-studio' do
  version '2.1.3.0,143.3101438'
  sha256 '354c9cd25983a1df92935e9a5e6411b0b40505b9a9d0b2d900b855af20c4480e'

  # google.com/dl/android/studio was verified as official when first introduced to the cask
  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.zip"
  name 'Android Studio'
  homepage 'https://developer.android.com/sdk/'
  license :apache

  app 'Android Studio.app'

  zap delete: [
                "~/Library/Preferences/AndroidStudio#{version.major_minor}",
                '~/Library/Preferences/com.google.android.studio.plist',
                "~/Library/Application Support/AndroidStudio#{version.major_minor}",
                "~/Library/Logs/AndroidStudio#{version.major_minor}",
                "~/Library/Caches/AndroidStudio#{version.major_minor}",
              ],
      rmdir:  '~/AndroidStudioProjects'

  caveats do
    depends_on_java
  end
end
