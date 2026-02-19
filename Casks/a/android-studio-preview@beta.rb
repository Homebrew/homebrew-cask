cask "android-studio-preview@beta" do
  arch arm: "mac_arm", intel: "mac"

  version "2025.3.2.5,panda2-rc1"
  sha256 arm:   "7150779f62a71a8540d4928901e540c7413f715b7b45619e70c32fa89d5f5f33",
         intel: "5bcf7bb17b7e6201281d3d64858e7ebe5769c78d49655bd7d82000ab18549b5c"

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
