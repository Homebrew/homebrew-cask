cask "macmonitor" do
  version "1.0"
  sha256 "d2fa6e5e4480ee0eb1e0299f9d68458302cb9da4e3c9e234cc2a3e8395d52ace"

  url "https://github.com/bulldozestore/macmonitor/releases/download/v#{version}/MacMonitor-v#{version}.dmg"
  name "MacMonitor"
  desc "Native macOS menu bar app showing CPU thermal state, RAM, disk and battery"
  homepage "https://macmonitor.pages.dev"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MacMonitor.app"

  zap trash: [
    "~/Library/Preferences/com.bulldozestore.macmonitor.plist",
  ]
end
