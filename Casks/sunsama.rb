cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "2.0.5"
  sha256 arm:   "4f8d08c5966a60509c835771ef636e1cfbf9356e26b739ef8d09509837949a31",
         intel: "79479bde04b596a0e2dba7cf17b0ff72adff69b67a8dd2d816a5921a2326f563"

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
