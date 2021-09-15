cask "android-studio" do
  version "2020.3.1.24"

  if Hardware::CPU.intel?
    sha256 "291a519faef35b27f4d0f82805ba8a5e0019b09d5405743169b1b72cc66022f3"
    url "https://redirector.gvt1.com/edgedl/android/studio/install/#{version}/android-studio-#{version}-mac.dmg",
        verified: "redirector.gvt1.com/edgedl/android/studio/"
  else
    sha256 "1895dbb4860b79eb9470cf2ef7fa477cb1cac6e6d058e8b13ac38292e19993ec"
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
