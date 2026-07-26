cask "puremac" do
  version "2.9.3"
  sha256 "92061032401bdb0ba6fc52fea3ebdd42472a5af77844b53d5f1f1a26c9a75d9a"

  url "https://github.com/momenbasel/PureMac/releases/download/v#{version}/PureMac-#{version}.zip"
  name "PureMac"
  desc "Open-source application manager and system cleaner"
  homepage "https://github.com/momenbasel/PureMac"

  depends_on macos: :ventura

  app "PureMac.app"

  zap trash: [
    "~/Library/Caches/com.puremac.app",
    "~/Library/LaunchAgents/com.puremac.scheduler.plist",
    "~/Library/Preferences/com.puremac.app.plist",
  ]
end
