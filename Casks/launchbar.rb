cask "launchbar" do
  version "6.14.1"
  sha256 "0d985ae5194851981383e52c6f88e9176e43a1850bb129f5cc62fdb0f4b7ab54"

  url "https://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
  name "LaunchBar"
  desc "Productivity tool"
  homepage "https://www.obdev.at/products/launchbar/index.html"

  livecheck do
    url "https://www.obdev.at/products/launchbar/download.html"
    strategy :page_match
    regex(%r{href=.*?/LaunchBar-(\d+(?:\.\d+)*)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "LaunchBar.app"

  zap trash: [
    "~/Library/Application Support/LaunchBar",
    "~/Library/Caches/at.obdev.LaunchBar",
    "~/Library/Preferences/at.obdev.LaunchBar.plist",
    "~/Library/Saved Application State/at.obdev.LaunchBar.savedState",
  ]
end
