cask "android-studio" do
  arch = Hardware::CPU.intel? ? "mac" : "mac_arm"

  version "2021.2.1.14"

  if Hardware::CPU.intel?
    sha256 "e3c4131cdb92ac3b2a8f287f7989528dd7a413477adc90f008748371921e80ee"
  else
    sha256 "eda598ecffd2640083031d81194cbeacf507c06febb8dc69f277f36fe47ba7a8"
  end

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
  conflicts_with cask: "android-studio-preview-beta"

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
