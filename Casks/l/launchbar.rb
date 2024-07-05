cask "launchbar" do
  version "6.19.1"
  sha256 "28ec9c6995c6687c61534e63ae0977644572efb6cb9a5b9abbef79d7aba20cac"

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
