cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "2.0.9"
  sha256 arm:   "e9cd19d2a419f5bcd68cc1a10b72ad81797c02c350458240ba9c52c3660df8dc",
         intel: "686a36f7e8fc3c6b0e48bbc9744d718bf2c022fef81159726f9e427df768077f"

  url "https://download.todesktop.com/2003096gmmnl0g1/Sunsama%20#{version}-#{arch}.dmg",
      verified: "download.todesktop.com/2003096gmmnl0g1/"
  name "Sunsama"
  desc "Daily planner and calendar"
  homepage "https://www.sunsama.com/desktop"

  livecheck do
    url "https://download.todesktop.com/2003096gmmnl0g1/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Sunsama.app"

  zap trash: [
    "~/Library/Application Support/Sunsama",
    "~/Library/Logs/Sunsama",
    "~/Library/Preferences/com.sunsama.native-app.plist",
    "~/Library/Saved Application State/com.sunsama.native-app.savedState",
  ]
end
