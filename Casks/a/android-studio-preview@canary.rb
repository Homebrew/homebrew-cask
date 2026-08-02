cask "android-studio-preview@canary" do
  arch arm: "mac_arm", intel: "mac"

  version "2026.1.4.3,quail4-canary3,AI-261.26222.65.2614.15978069"
  sha256 arm:   "e5cc66a505493945a4fa3c1cbf5dee4d721484b5649915825673e62598c91ec1",
         intel: "5e6a2435456572956f15c04e88e7a64e0d8eabdbd4785409bacbbcecf8b460e7"

  url "https://edgedl.me.gvt1.com/android/studio/install/#{version.csv.first}/android-studio#{"-#{version.csv.second}" if version.csv.second}-#{arch}.dmg",
      verified: "edgedl.me.gvt1.com/android/studio/install/"
  name "Android Studio Preview (Canary)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url "https://jb.gg/android-studio-releases-list.json"
    strategy :json do |json|
      json.dig("content", "item")&.filter_map do |release|
        next if release["channel"] != "Canary"

        version = release["version"]
        build = release["build"]
        download = release["download"]&.find { |item| item["link"]&.end_with?("-#{arch}.dmg") }
        match = download&.dig("link")&.match(%r{/android-studio-([^/]+)-#{arch}\.dmg\z}i)
        next if version.blank? || build.blank? || match.blank?

        "#{version},#{match[1]},#{build}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  rename "Android Studio*.app", "Android Studio Preview Canary.app"

  app "Android Studio Preview Canary.app"
  binary "#{appdir}/Android Studio Preview Canary.app/Contents/MacOS/studio", target: "studio-canary"

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
