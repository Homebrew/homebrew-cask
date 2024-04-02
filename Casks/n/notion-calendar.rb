cask "notion-calendar" do
  arch arm: "arm64", intel: "x64"

  version "1.120.0,240326ydciyyj0o"
  sha256 arm:   "1fc729de0dd7738e71d97be9966402842350bbfff3c86022b9abd395fa522cab",
         intel: "ea2850671a6a6da1c99d9dc810ffb3ede04c8ca2b2e4d2e9c692844522b14b2c"

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
