cask "puremac" do
  version "2.1.0"
  sha256 "4a582397b08a90eaded222556e2ade89c17a0ef61cf7ad34058ecec7ec54cae9"

  url "https://github.com/momenbasel/PureMac/releases/download/v#{version}/PureMac-#{version}.zip"
  name "PureMac"
  desc "Open-source application manager and system cleaner"
  homepage "https://github.com/momenbasel/PureMac"

  depends_on macos: ">= :ventura"

  app "PureMac.app"

  zap trash: [
    "~/Library/Caches/com.puremac.app",
    "~/Library/LaunchAgents/com.puremac.scheduler.plist",
    "~/Library/Preferences/com.puremac.app.plist",
  ]
end
