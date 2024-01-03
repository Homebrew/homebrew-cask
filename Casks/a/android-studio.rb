cask "android-studio" do
  arch arm: "mac_arm", intel: "mac"

  version "2023.1.1.27"
  sha256 arm:   "c1928b590df661271fe3833bf02cc48a3e8666aa9a7a24d0c149a696d597e828",
         intel: "fe0d8a726704307ba357d6e533b6aa2f90cdb96918e59c816d5c595e3feac28a"

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
