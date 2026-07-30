cask "android-studio" do
  arch arm: "mac_arm", intel: "mac"

  version "2026.1.3.7,quail3,AI-261.26222.65.2613.15948027"
  sha256 arm:   "e43fb8f880a419208f821befea17eb9ec1b00c5c2a20227db29c495411c5f99d",
         intel: "3676f92b7a1a9e611a57d398f501c1263d59322766e1e8597c9af4d43e3b2a31"

  url "https://edgedl.me.gvt1.com/android/studio/install/#{version.csv.first}/android-studio#{"-#{version.csv.second}" if version.csv.second}-#{arch}.dmg",
      verified: "edgedl.me.gvt1.com/android/studio/install/"
  name "Android Studio"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/"

  livecheck do
    url "https://jb.gg/android-studio-releases-list.json"
    strategy :json do |json|
      json.dig("content", "item")&.filter_map do |release|
        next unless %w[Patch Release].include?(release["channel"])

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
