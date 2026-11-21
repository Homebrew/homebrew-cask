cask "android-studio-preview@canary" do
  arch arm: "mac_arm", intel: "mac"

  version "2026.3.1.2,stingray1-canary2"
  sha256 arm:   "b54e1825089029b1fb506bbbe3010c1149ca973199ffc2d5354cec43581bd06d",
         intel: "2df617dbd3e325e95c7c9756baa8c6564ed2d8a98a079e2564054a89779afff6"

  version_suffix = "-#{version.csv.second}" if version.csv.second
  url "https://edgedl.me.gvt1.com/android/studio/install/#{version.csv.first}/android-studio#{version_suffix}-#{arch}.dmg"
  name "Android Studio Preview (Canary)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/android[._-]studio(?:[._-]([^"' >]+))?[._-]#{arch}\.dmg[^>]*?canary}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match.values_at(0, 1).compact_blank.join(",")
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
        "~/Library/Preferences/com.google.android.studio.plist",
        "~/Library/Saved Application State/com.google.android.studio-EAP.savedState",
      ],
      rmdir: [
        "~/AndroidStudioProjects",
        "~/Library/Android",
      ]
end
