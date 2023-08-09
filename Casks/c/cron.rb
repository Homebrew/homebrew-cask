cask "cron" do
  arch arm: "arm64", intel: "x64"

  version "1.114.0"
  sha256 arm:   "d726eeea65a6260a3d709a2d2e2ac6ecd5d39afb7216cc322375d5426c87202f",
         intel: "26928c3a405a5384cf21f156113be51de99ea4a22118899c1c5295d5d42ad6ec"

  url "https://download.todesktop.com/210303leazlircz/Cron%20#{version}-#{arch}-mac.zip",
      verified: "download.todesktop.com/210303leazlircz/"
  name "Cron Calendar"
  desc "Calendar for professionals and teams"
  homepage "https://cron.com/"

  livecheck do
    url "https://download.todesktop.com/210303leazlircz/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Cron.app"

  zap trash: [
    "~/Library/Application Support/Cron",
    "~/Library/Preferences/com.cron.electron.plist",
    "~/Library/Saved Application State/com.cron.electron.savedState",
  ]
end
