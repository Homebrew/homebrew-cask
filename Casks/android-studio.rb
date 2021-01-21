cask "android-studio" do
  version "4.1.2.0,201.7042882"
  sha256 "541db2ab0fda0b1197509b39fac905b7e4879a1d0bad749ad1ccc0727e02ea6b"

  url "https://dl.google.com/dl/android/studio/install/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.dmg",
      verified: "google.com/dl/android/studio/"
  appcast "https://dl.google.com/android/studio/patches/updates.xml",
          must_contain: version.before_comma.chomp(".0")
  name "Android Studio"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/"

  auto_updates true

  app "Android Studio.app"

  zap trash: [
    "~/Library/Android/sdk",
    "~/Library/Application Support/AndroidStudio#{version.major_minor}",
    "~/Library/Caches/AndroidStudio#{version.major_minor}",
    "~/Library/Logs/AndroidStudio#{version.major_minor}",
    "~/Library/Preferences/AndroidStudio#{version.major_minor}",
    "~/Library/Preferences/com.android.Emulator.plist",
    "~/Library/Preferences/com.google.android.studio.plist",
    "~/Library/Saved Application State/com.google.android.studio.savedState",
    "~/.android",
  ],
      rmdir: [
        "~/AndroidStudioProjects",
        "~/Library/Android",
      ]
end
