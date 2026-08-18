cask "android-studio-preview@beta" do
  arch arm: "mac_arm", intel: "mac"

  version "2026.1.4.5,quail4-rc1,AI-261.26222.65.2614.16087418"
  sha256 arm:   "16fb6c53a147173fe484a496cc1b9d37382de2a5647654b691722a1827009dc8",
         intel: "dd3e2064a4f45dfb07f74d38d1ce29bcaeaf1572882d73a0898cc8a4ec2c4442"

  url "https://edgedl.me.gvt1.com/android/studio/install/#{version.csv.first}/android-studio#{"-#{version.csv.second}" if version.csv.second}-#{arch}.dmg",
      verified: "edgedl.me.gvt1.com/android/studio/install/"
  name "Android Studio Preview (Beta)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url "https://jb.gg/android-studio-releases-list.json"
    strategy :json do |json|
      json.dig("content", "item")&.filter_map do |release|
        next unless %w[Beta RC].include?(release["channel"])

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
        "~/Library/Saved Application State/com.google.android.studio-EAP.savedState",
      ],
      rmdir: [
        "~/AndroidStudioProjects",
        "~/Library/Android",
      ]
end
