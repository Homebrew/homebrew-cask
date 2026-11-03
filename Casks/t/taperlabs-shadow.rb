cask "taperlabs-shadow" do
  version "2.4.2,158"
  sha256 "e4f68c2e265403fe70b69f3fc5bc9c2fa060aa471c5a41f1b21c21cdae2b3264"

  url "https://cdn.shadow.do/releases/mac/latest/#{version.csv.first}-build#{version.csv.second}/Shadow-#{version.csv.first}-arm64.dmg"
  name "Shadow"
  desc "AI meeting notetaker"
  homepage "https://www.shadow.do/"

  livecheck do
    url "https://cdn.shadow.do/releases/mac/latest/latest-mac.yml"
    regex(%r{^(\d+(?:\.\d+)+)-build(\d+)/Shadow[._-]v?\d+(?:\.\d+)+-arm64\.dmg$}i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.filter_map do |file|
        match = file["url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Shadow.app"

  uninstall quit:       "com.taperlabs.shadow",
            login_item: "Shadow"

  # "~/Library/Application Support/Shadow/User Data" (database, default Vault of
  # Markdown meeting notes) and "~/Library/Application Support/Shadow/Backups"
  # are the user's own meeting data and are deliberately left in place.
  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.taperlabs.shadow.sfl*",
    "~/Library/Application Support/Shadow/App Runtime",
    "~/Library/Application Support/Shadow/Logs",
    "~/Library/Application Support/Shadow/Models",
    "~/Library/Caches/com.taperlabs.shadow",
    "~/Library/Caches/com.taperlabs.shadow.ShipIt",
    "~/Library/Caches/shadow-desktop-updater",
    "~/Library/HTTPStorages/com.taperlabs.shadow",
    "~/Library/Preferences/com.taperlabs.shadow.plist",
    "~/Library/Preferences/com.taperlabs.shadow.v23.plist",
    "~/Library/Saved Application State/com.taperlabs.shadow.savedState",
    "~/Library/WebKit/com.taperlabs.shadow",
  ]
end
