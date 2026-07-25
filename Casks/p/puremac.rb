cask "puremac" do
  version "2.9.2"
  sha256 "8f35bc59693811f3c573abfec4aa529c9a35635fb57bceca448e4d02174e165f"

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
