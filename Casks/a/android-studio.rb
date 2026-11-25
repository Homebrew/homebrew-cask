cask "android-studio" do
  arch arm: "mac_arm", intel: "mac"

  version "2026.2.2.11,rabbit2-patch3"
  sha256 arm:   "6ecbca33a56c5af0916ddaf2e8cfc9aac9fd28fdae30ec7c5f5ad01944b73956",
         intel: "49128aeb9b122a8a3ebbb2bb10ce5072146f3df8769a7f1a02f56ef9b1d24da0"

  version_suffix = "-#{version.csv.second}" if version.csv.second
  url "https://edgedl.me.gvt1.com/android/studio/install/#{version.csv.first}/android-studio#{version_suffix}-#{arch}.dmg"
  name "Android Studio"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/android[._-]studio(?:[._-]([^"' >]+))?[._-]#{arch}\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match.values_at(0, 1).compact_blank.join(",")
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
