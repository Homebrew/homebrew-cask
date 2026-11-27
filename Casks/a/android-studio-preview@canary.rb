cask "android-studio-preview@canary" do
  arch arm: "mac_arm", intel: "mac"

  version "2026.3.1.4,stingray1-canary4"
  sha256 arm:   "5bc02d54bb1d4c33ecc209fe1b8af431c1e1a2cd900fc3a732a76a3eaa2fe18e",
         intel: "88d0cf3712c2bf9d3155465daef07562252d1e488dc1c03791b7e0b7f5059650"

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
