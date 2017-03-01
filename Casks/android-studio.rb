cask 'android-studio' do
  version '2.2.3.0,145.3537739'
  sha256 '0589c5e8099b91070af2178006455d5d3b134dcf6da5f6c33d95498a2f5f427c'

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
