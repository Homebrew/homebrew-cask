cask "android-studio" do
  arch arm: "mac_arm", intel: "mac"

  version "2026.2.1.8,rabbit1"
  sha256 arm:   "16d4a0f8a52413b51869fc18d5bdcdf9cecd38615cd7bb7cf14d51b99d2fef54",
         intel: "9284f783ac1096af1e0612173d8b5e17693fe32cc44ef8f6bec5d1367e00c40e"

  url "https://edgedl.me.gvt1.com/android/studio/install/#{version.csv.first}/android-studio#{"-#{version.csv.second}" if version.csv.second}-#{arch}.dmg"
  name "Android Studio"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/android[._-]studio(?:[._-]([^"' >]+))?[._-]#{arch}\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match[1].present? ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "Android Studio.app"
  binary "#{appdir}/Android Studio.app/Contents/MacOS/studio"

  uninstall quit: "com.google.android.studio"

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
