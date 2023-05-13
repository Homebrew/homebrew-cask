cask "cron" do
  arch arm: "arm64", intel: "x64"

  version "1.113.0"
  sha256 arm:   "fceb1825d5bc0a734b6f46371ed730050241bac0050f36d5fb7092b5093a8775",
         intel: "46a93ec8c570a360ef379ead2ac1b7c212577c2e104d48ddfd8c425438c3a751"

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
