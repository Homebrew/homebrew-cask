cask "notion-calendar" do
  arch arm: "arm64", intel: "x64"

  version "1.129.0,250306xfvrjcnbr"
  sha256 arm:   "7a59ae6e3419a644ad24886f223bb5e9de53f7548e8478e53a04b2c15cda33eb",
         intel: "35e141338731efb81e70e1c73baa66a4ac035b79f1353d1029f0458619c64b50"

  url "https://download.todesktop.com/210303leazlircz/Notion%20Calendar%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
      verified: "download.todesktop.com/210303leazlircz/"
  name "Notion Calendar"
  desc "Calendar for professionals and teams"
  homepage "https://www.notion.so/product/calendar"

  livecheck do
    url "https://download.todesktop.com/210303leazlircz/latest-mac.yml"
    regex(/Build[ ._-]([^-]+)[._-]/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{yaml["version"]},#{match[1]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Notion Calendar.app"

  # Renamed from Cron to Notion Calendar on 2024-01-18, but some files still use the old name
  zap trash: [
    "~/Library/Application Support/Notion Calendar",
    "~/Library/Preferences/com.cron.electron.plist",
    "~/Library/Saved Application State/com.cron.electron.savedState",
  ]
end
