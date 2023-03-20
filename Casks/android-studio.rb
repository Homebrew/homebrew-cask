cask "android-studio" do
  arch arm: "mac_arm", intel: "mac"

  version "2022.1.1.21"
  sha256 arm:   "2ced38b172557967109b19730c865e2a2a279969890f4432913a92ac152dcfbb",
         intel: "d6a073066178be9d224a49e7d8469f00c21a14e7ffeb17a77f5aa43c31624086"

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
