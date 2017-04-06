cask 'android-studio' do
  version '2.3.1.0,162.3871768'
  sha256 '7af9bb72c8ede549b3a4d0d8fc6dbc597bb4b726e15d2fba73edf12dd2ebc6d8'

  # google.com/dl/android/studio was verified as official when first introduced to the cask
  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.zip"
  name 'Android Studio'
  homepage 'https://developer.android.com/studio/index.html'

  app 'Android Studio.app'

  zap delete: [
                '~/Library/Android/sdk',
                "~/Library/Application Support/AndroidStudio#{version.major_minor}",
                "~/Library/Caches/AndroidStudio#{version.major_minor}",
                "~/Library/Preferences/AndroidStudio#{version.major_minor}",
                '~/Library/Preferences/com.google.android.studio.plist',
                "~/Library/Logs/AndroidStudio#{version.major_minor}",
              ],
      rmdir:  [
                '~/AndroidStudioProjects',
                '~/Library/Android',
              ]
end
