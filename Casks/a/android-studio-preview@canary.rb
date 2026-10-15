cask "android-studio-preview@canary" do
  arch arm: "mac_arm", intel: "mac"

  version "2026.2.2.5,rabbit2-canary5"
  sha256 arm:   "118cc4d8996e92fdd76d50948d9d7f7ee9e2e14ec1f2f04542ac2128c378c653",
         intel: "b8ac31f17e6be45b8ad6691e0acca49adf78bb2e20026d7ae6f251b416379526"

  url "https://edgedl.me.gvt1.com/android/studio/install/#{version.csv.first}/android-studio#{"-#{version.csv.second}" if version.csv.second}-#{arch}.dmg"
  name "Android Studio Preview (Canary)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/android[._-]studio(?:[._-]([^"' >]+))?[._-]#{arch}\.dmg[^>]*?canary}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match[1].present? ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  auto_updates true
  depends_on :macos

  rename "Android Studio*.app", "Android Studio Preview Canary.app"

  app "Android Studio Preview Canary.app"
  binary "#{appdir}/Android Studio Preview Canary.app/Contents/MacOS/studio", target: "studio-canary"

  uninstall quit: "com.google.android.studio"

  zap trash: [
        "~/.android",
        "~/Library/Android/sdk",
        "~/Library/Application Support/Google/AndroidStudioPreview#{version.major_minor}",
        "~/Library/Caches/Google/AndroidStudioPreview#{version.major_minor}",
        "~/Library/Logs/Google/AndroidStudioPreview#{version.major_minor}",
        "~/Library/Preferences/com.android.Emulator.plist",
        "~/Library/Preferences/com.google.android.studio-EAP.plist",
        "~/Library/Saved Application State/com.google.android.studio-EAP.savedState",
      ],
      rmdir: [
        "~/AndroidStudioProjects",
        "~/Library/Android",
      ]
end
