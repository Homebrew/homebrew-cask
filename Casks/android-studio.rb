cask 'android-studio' do
  version '3.0.1.0,171.4443003'
  sha256 '2c8a24ad2de21e8d1d77a748a35cc5ca47812d9f5e2a0865981e206073d1d981'

  # google.com/dl/android/studio was verified as official when first introduced to the cask
  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.zip"
  name 'Android Studio'
  homepage 'https://developer.android.com/studio/index.html'

  auto_updates true

  app 'Android Studio.app'

  zap delete: [
                "~/Library/Caches/AndroidStudio#{version.major_minor}",
                "~/Library/Logs/AndroidStudio#{version.major_minor}",
                '~/Library/Saved Application State/com.google.android.studio.savedState',
              ],
      trash:  [
                '~/Library/Android/sdk',
                "~/Library/Application Support/AndroidStudio#{version.major_minor}",
                "~/Library/Preferences/AndroidStudio#{version.major_minor}",
                '~/Library/Preferences/com.android.Emulator.plist',
                '~/.android',
              ],
      rmdir:  [
                '~/AndroidStudioProjects',
                '~/Library/Android',
              ]
end
