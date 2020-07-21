cask 'android-studio' do
  version '4.0.1.0,193.6626763'
  sha256 '4c0003224f72343e9ec501d0b4ec7245ce14349e3da75f84f8979132509fd175'

  # google.com/dl/android/studio/ was verified as official when first introduced to the cask
  url "https://dl.google.com/dl/android/studio/install/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.dmg"
  appcast 'https://dl.google.com/android/studio/patches/updates.xml',
          must_contain: version.before_comma
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
               '~/Library/Preferences/com.google.android.studio.plist',
               '~/Library/Saved Application State/com.google.android.studio.savedState',
               '~/.android',
             ],
      rmdir: [
               '~/AndroidStudioProjects',
               '~/Library/Android',
             ]
end
