cask 'android-studio' do
  version '2.3.3.0,162.4069837'
  sha256 'e9e11f1d20e6d3b40b4a69cf453037465d4a1f37946fd5949833d38720c84efd'

  # google.com/dl/android/studio was verified as official when first introduced to the cask
  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.zip"
  name 'Android Studio'
  homepage 'https://developer.android.com/studio/index.html'

  auto_updates true

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
