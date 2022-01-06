cask "android-studio" do
  arch = Hardware::CPU.intel? ? "mac" : "mac_arm"

  version "2020.3.1.26"

  if Hardware::CPU.intel?
    sha256 "7da10ce0c3e998393045f6de3c37df46bd95e3bacb3f803d63fd85bc67148d6e"
  else
    sha256 "19688e19df59f37ce1d4b2b339d0c81dbc8f443fb2c8cbe4d6e4178cc70f935a"
  end

  url "https://redirector.gvt1.com/edgedl/android/studio/install/#{version}/android-studio-#{version}-#{arch}.dmg",
      verified: "redirector.gvt1.com/edgedl/android/studio/"
  name "Android Studio"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/"

  livecheck do
    url :homepage
    regex(/android-studio-(\d+(?:\.\d+)+)-#{arch}\.dmg/i)
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/android-studio-preview-beta"

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
