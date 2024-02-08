cask "notion-calendar" do
  arch arm: "arm64", intel: "x64"

  version "1.118.0,2402013gyoac4ma"
  sha256 arm:   "f2eb6e9053faf3b00d871751d245f4ada0197678f502e94c2debf08a500e2225",
         intel: "53574c24b231249104dd6643637983c24224d69dc1572d60dc2b93d1c950c9c4"

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
