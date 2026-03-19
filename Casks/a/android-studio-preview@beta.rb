cask "android-studio-preview@beta" do
  arch arm: "mac_arm", intel: "mac"

  version "2025.3.3.5,panda3-rc1"
  sha256 arm:   "039e4421c7ed91f39ee82c7fe872c3f8b8069c90465ae549181951eddda6c41c",
         intel: "a0b676f2032ae5959f5078b9e7e22c847ea2baa70d75b4ed58a7b10aad973473"

  url "https://edgedl.me.gvt1.com/android/studio/install/#{version.csv.first}/android-studio#{"-#{version.csv.second}" if version.csv.second}-#{arch}.dmg",
      verified: "edgedl.me.gvt1.com/android/studio/install/"
  name "Android Studio Preview (Beta)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url :homepage
    regex(%r{(?:Beta|RC).*href=.*?/v?(\d+(?:\.\d+)+)/android[._-]studio(?:[._-]([^"' >]+))?[._-]#{arch}\.dmg}im)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match[1].present? ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  auto_updates true

  app "Android Studio.app", target: "Android Studio Preview Beta.app"
  binary "#{appdir}/Android Studio Preview Beta.app/Contents/MacOS/studio", target: "studio-beta"

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
