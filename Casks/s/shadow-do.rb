cask "shadow-do" do
  version "2.3.8,133"
  sha256 "1a32a7d2c6b946ab133064000123d04829feb092d100e78bfe9cb9ba33a9b7ab"

  url "https://cdn.shadow.do/releases/v23/latest/#{version.csv.first}-build#{version.csv.second}/Shadow-#{version.csv.first}-arm64.dmg"
  name "Shadow"
  desc "AI meeting notetaker"
  homepage "https://www.shadow.do/"

  livecheck do
    url "https://cdn.shadow.do/releases/v23/latest/latest-mac.yml"
    regex(%r{^(\d+(?:\.\d+)+)-build(\d+)/Shadow[._-]v?\d+(?:\.\d+)+-arm64\.dmg$}i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.filter_map do |file|
        match = file["url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Shadow.app"

  uninstall quit:       "com.taperlabs.shadow",
            login_item: "Shadow"

  # "~/Library/Application Support/Shadow/User Data" (database, default Vault of
  # Markdown meeting notes) and "~/Library/Application Support/Shadow/Backups"
  # are the user's own meeting data and are deliberately left in place.
  zap trash: [
    "~/Library/Application Support/com.taperlabs.shadow.v23",
    "~/Library/Application Support/Shadow/App Runtime",
    "~/Library/Application Support/Shadow/Logs",
    "~/Library/Application Support/Shadow/Models",
    "~/Library/Caches/com.taperlabs.shadow",
    "~/Library/Caches/com.taperlabs.shadow.ShipIt",
    "~/Library/Caches/shadow-desktop-updater",
    "~/Library/HTTPStorages/com.taperlabs.shadow",
    "~/Library/HTTPStorages/com.taperlabs.shadow.v23",
    "~/Library/Preferences/com.taperlabs.shadow.plist",
    "~/Library/Preferences/com.taperlabs.shadow.v23.plist",
    "~/Library/Saved Application State/com.taperlabs.shadow.savedState",
    "~/Library/WebKit/com.taperlabs.shadow",
  ]
end
