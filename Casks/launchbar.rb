cask "launchbar" do
  version "6.16"
  sha256 "1c2051afa5150e982c347ca7652be8d6cfefe3e267c7869f74b7708e87a073e0"

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
