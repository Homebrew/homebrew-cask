cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "2.0.2"
  sha256 arm:   "631db81a8b6d9bef4a2d734899806ad7ab5beb09c7a4145ff6a6dfb9a8c3279b",
         intel: "3442dabe1f3752684bfa3dbfce7757cdf1e0cdebbad8d26b7433e0828c48a475"

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
