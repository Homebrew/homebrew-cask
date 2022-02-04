cask "android-studio" do
  arch = Hardware::CPU.intel? ? "mac" : "mac_arm"

  version "2021.1.1.21"

  if Hardware::CPU.intel?
    sha256 "f6002bd01106dc6d258f959a15c200f7aa1c136ff773b1258942e654b93a282a"
  else
    sha256 "39ed9c8a8494acce56254a470243aceabcba39e337123c80464d2579a98fe8f4"
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
