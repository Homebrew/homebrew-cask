cask "cron" do
  arch arm: "arm64", intel: "x64"

  version "1.110.0"
  sha256 arm:   "f36b7654dd41cf9c8bb8f1d9b6932fdda513d9d8d0f2592a5ce539dbab59ff6b",
         intel: "66963577372b84a1ae48c87a92a9402bee3ade555d87f44b29bd14d5a9a42fa9"

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
