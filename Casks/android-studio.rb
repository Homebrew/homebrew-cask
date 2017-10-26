cask 'android-studio' do
  version '3.0.0.18,171.4408382'
  sha256 'f75c99356259c42e00b05af1627bc06c74819850b02b95e7ff4c28e9b397120f'

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
