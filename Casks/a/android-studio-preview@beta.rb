cask "android-studio-preview@beta" do
  arch arm: "mac_arm", intel: "mac"

  version "2026.2.3.5,rabbit3-rc2"
  sha256 arm:   "98c95bbcabd33d160174775314becccb7bbe60c964e78bbbf16450bd61265924",
         intel: "f1a0b0852ca57eaf661770ef8dfe77ee4e514962c1ddeaa19a665916de64b8e7"

  version_suffix = "-#{version.csv.second}" if version.csv.second
  url "https://edgedl.me.gvt1.com/android/studio/install/#{version.csv.first}/android-studio#{version_suffix}-#{arch}.dmg"
  name "Android Studio Preview (Beta)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/android[._-]studio(?:[._-]([^"' >]+))?[._-]#{arch}\.dmg[^>]*?beta}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match.values_at(0, 1).compact_blank.join(",")
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "Android Studio.app", target: "Android Studio Preview Beta.app"
  binary "#{appdir}/Android Studio Preview Beta.app/Contents/MacOS/studio", target: "studio-beta"

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
