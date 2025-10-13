cask "launchbar" do
  version "6.22.1"
  sha256 "dfe681c9d61e86fdd44e1417226f06614ea0dab76a90f74d015ecb52b9f0dd99"

  url "https://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
  name "LaunchBar"
  desc "Productivity tool"
  homepage "https://www.obdev.at/products/launchbar/index.html"

  livecheck do
    url "https://www.obdev.at/products/launchbar/download.html"
    regex(%r{href=.*?/LaunchBar-(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "LaunchBar.app"

  zap trash: [
    "~/Library/Application Support/LaunchBar",
    "~/Library/Caches/at.obdev.LaunchBar",
    "~/Library/Preferences/at.obdev.LaunchBar.plist",
    "~/Library/Saved Application State/at.obdev.LaunchBar.savedState",
  ]
end
