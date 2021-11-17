cask "android-studio" do
  arch = Hardware::CPU.intel? ? "mac" : "mac_arm"

  version "2020.3.1.25"

  url "https://redirector.gvt1.com/edgedl/android/studio/install/#{version}/android-studio-#{version}-#{arch}.dmg",
      verified: "redirector.gvt1.com/edgedl/android/studio/"
  if Hardware::CPU.intel?
    sha256 "caa2a4a6adbd5ff94e0fbb9ffec798d5b24319070d7d231684ea9a458b1420ee"
  else
    sha256 "156935cdc02d0525d1b1529492468194027d1f63eac71d89ebd9c1fc08ba7c60"
  end

  name "Android Studio"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/"

  livecheck do
    url :homepage
    regex(/android-studio-(\d+(?:\.\d+)+)-#{arch}\.dmg/i)
  end

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
