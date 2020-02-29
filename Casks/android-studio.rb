cask 'android-studio' do
  version '3.6.0.21,192.6200805'
  sha256 '518e31af08dfb00c44550fc71a470ddde5d6e3e8c3a7f4a5e0ddf91af806e9c0'

  # google.com/dl/android/studio was verified as official when first introduced to the cask
  url "https://dl.google.com/dl/android/studio/install/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.dmg"
  appcast 'https://dl.google.com/android/studio/patches/updates.xml',
          configuration: version.major_minor_patch
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
