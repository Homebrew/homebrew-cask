cask 'android-studio' do
  version '3.1.0.16,173.4670197'
  sha256 '920f1505fd6b8c23d8c56c1ebc72bbea2c99c3c1badc9747372a1fc9d7add04c'

  # google.com/dl/android/studio was verified as official when first introduced to the cask
  url "https://dl.google.com/dl/android/studio/install/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.dmg"
  name 'Android Studio'
  homepage 'https://developer.android.com/studio/index.html'

  auto_updates true

  app 'Android Studio.app'

  zap trash: [
               '~/Library/Android/sdk',
               "~/Library/Application Support/AndroidStudio#{version.major_minor}",
               "~/Library/Caches/AndroidStudio#{version.major_minor}",
               "~/Library/Logs/AndroidStudio#{version.major_minor}",
               "~/Library/Preferences/AndroidStudio#{version.major_minor}",
               '~/Library/Preferences/com.android.Emulator.plist',
               '~/Library/Saved Application State/com.google.android.studio.savedState',
               '~/.android',
             ],
      rmdir: [
               '~/AndroidStudioProjects',
               '~/Library/Android',
             ]
end
