cask 'android-studio' do
  version '3.5.0.21,191.5791312'
  sha256 'be3a0b809f4c3e6c588d4c3019f0a9062882ffab8440942bd23ebce7effa4989'

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
