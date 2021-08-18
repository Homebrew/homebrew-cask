cask "android-studio" do
  version "2020.3.1.23"

  if Hardware::CPU.intel?
    sha256 "2e8fd75b614c5c48cb3df1fbd91d16e46c09a85bd1dbf458177bbee8b82b2e7e"
    url "https://redirector.gvt1.com/edgedl/android/studio/install/#{version}/android-studio-#{version}-mac.dmg",
        verified: "redirector.gvt1.com/edgedl/android/studio/"
  else
    sha256 "71b0a1c8932f166e18cc003df6ab414fb5d86e8b6ffa9292f82f9a7159caf874"
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
