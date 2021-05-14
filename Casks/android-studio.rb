cask "android-studio" do
  version "4.2.0.24,202.7322048"
  sha256 "ff4291d56d94f5b3208f101a2591f15fef33b39e258251450916fdd62db9943e"

  url "https://dl.google.com/dl/android/studio/install/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.dmg",
      verified: "google.com/dl/android/studio/"
  name "Android Studio"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/(\d+(?:\.\d+)*)/android-studio-ide-(\d+(?:\.\d+)*)-mac\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
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
