cask "android-studio" do
  arch arm: "mac_arm", intel: "mac"

  version "2026.1.2.10,quail2,AI-261.25134.95.2612.15822958"
  sha256 arm:   "76206134aab3bbb096666a994f97b67ac8fa688a35c1e2c5d137a306909b3cd5",
         intel: "c77de47ce26de51951d4d447dff4dcf4908ea025cb0507121373f344c2540194"

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
