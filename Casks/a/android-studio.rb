cask "android-studio" do
  arch arm: "mac_arm", intel: "mac"

  version "2025.2.3.9"
  sha256 arm:   "b6285cdee418492658a4f5ee68beb52896e81ad27e7d10b3486b9b6e02b33e88",
         intel: "fb204243b011309526cc041a479177010e22ef6f77a28e1c08f98aee95dc37d1"

  url "https://redirector.gvt1.com/edgedl/android/studio/install/#{version.csv.first}/android-studio#{"-#{version.csv.second}" if version.csv.second}-#{arch}.dmg",
      verified: "redirector.gvt1.com/edgedl/android/studio/"
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

  app "Android Studio.app"
  binary "#{appdir}/Android Studio.app/Contents/MacOS/studio"

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
