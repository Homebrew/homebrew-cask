cask "launchbar" do
  version "6.17"
  sha256 "146c2bcaabb0924f1a69bfb73bb313a5cf7012647ded97eb38e7e7373d3e41f8"

  url "https://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
  name "LaunchBar"
  desc "Productivity tool"
  homepage "https://www.obdev.at/products/launchbar/index.html"

  livecheck do
    url "https://www.obdev.at/products/launchbar/download.html"
    regex(%r{href=.*?/LaunchBar-(\d+(?:\.\d+)+)\.dmg}i)
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
