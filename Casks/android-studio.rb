cask "android-studio" do
  version "2020.3.1.22"

  if Hardware::CPU.intel?
    sha256 "42722b671fcda03e6e02b712828b5484e4af7563c5172b583252c9070c173d4b"
    url "https://redirector.gvt1.com/edgedl/android/studio/install/#{version}/android-studio-#{version}-mac.dmg",
        verified: "redirector.gvt1.com/edgedl/android/studio/"
  else
    sha256 "dc383ea7d7a6585451bced011f7db178068b9744319a9093cb05ac855b2c81ff"
    url "https://redirector.gvt1.com/edgedl/android/studio/ide-zips/#{version}/android-studio-#{version}-mac_arm.zip",
        verified: "redirector.gvt1.com/edgedl/android/studio/"
  end

  name "Android Studio"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/"

  livecheck do
    url :homepage
    regex(/android-studio-(\d+(?:\.\d+)*)-mac/i)
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
