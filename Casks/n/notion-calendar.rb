cask "notion-calendar" do
  arch arm: "arm64", intel: "x64"

  version "1.117.0,240117ctn5jt6gd"
  sha256 arm:   "de2e12d05fe3447e706928ea9c01453ca4109aae0ef8d284a0ae65ae1964b4fd",
         intel: "42b12ca46a1ba6e297c8fec73e2caf107578e47e5055562af29d389b49464262"

  url "https://download.todesktop.com/210303leazlircz/Notion%20Calendar%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
      verified: "download.todesktop.com/210303leazlircz/"
  name "Notion Calendar"
  desc "Calendar for professionals and teams"
  homepage "https://cron.com/"

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
