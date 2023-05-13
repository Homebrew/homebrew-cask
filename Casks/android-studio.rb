cask "android-studio" do
  arch arm: "mac_arm", intel: "mac"

  version "2022.2.1.19"
  sha256 arm:   "3f2977e11be52dc9d7ff7b3a30548ff21b0b7d47f028422c481fef9d56e69f70",
         intel: "c726466e9d0b294580488fdbf886cf86a35f03c3a0d0b15999d59e13fc1c2c34"

  url "https://redirector.gvt1.com/edgedl/android/studio/install/#{version}/android-studio-#{version}-#{arch}.dmg",
      verified: "redirector.gvt1.com/edgedl/android/studio/"
  name "Android Studio"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/"

  livecheck do
    url :homepage
    regex(/android[._-]studio[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  auto_updates true

  app "Android Studio.app"

  zap trash: [
        "~/.android",
        "~/Library/Android/sdk",
        "~/Library/Application Support/Google/AndroidStudio#{version.major_minor}",
        "~/Library/Caches/Google/AndroidStudio#{version.major_minor}",
        "~/Library/Logs/Google/AndroidStudio#{version.major_minor}",
        "~/Library/Preferences/com.android.Emulator.plist",
        "~/Library/Preferences/com.google.android.studio.plist",
        "~/Library/Saved Application State/com.google.android.studio.savedState",
      ],
      rmdir: [
        "~/AndroidStudioProjects",
        "~/Library/Android",
      ]
end
