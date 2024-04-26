cask "notion-calendar" do
  arch arm: "arm64", intel: "x64"

  version "1.122.0,240425z72rc39q3"
  sha256 arm:   "2c2cf471499f22e5af2828786cad1826a9364c763544f340ea7ebb0c263446a2",
         intel: "1784817f63f259f18aa1a50971d4423117071fa340a745db27b7cf2675a57b4f"

  url "https://download.todesktop.com/210303leazlircz/Notion%20Calendar%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
      verified: "download.todesktop.com/210303leazlircz/"
  name "Notion Calendar"
  desc "Calendar for professionals and teams"
  homepage "https://www.notion.so/product/calendar"

  livecheck do
    url "https://download.todesktop.com/210303leazlircz/latest-mac.yml"
    regex(/Build[ ._-]([^-]+)[._-]/i)
    strategy :electron_builder do |item, regex|
      build = item["files"].first["url"][regex, 1]
      next if build.blank?

      "#{item["version"]},#{build}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Notion Calendar.app"

  # Renamed from Cron to Notion Calendar on 2024-01-18, but some files still use the old name
  zap trash: [
    "~/Library/Application Support/Notion Calendar",
    "~/Library/Preferences/com.cron.electron.plist",
    "~/Library/Saved Application State/com.cron.electron.savedState",
  ]
end
