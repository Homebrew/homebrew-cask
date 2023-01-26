cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "2.0.4"
  sha256 arm:   "98fb59a8d789b6bd8bb34c58789d69663f8fab720da7bbef7fe532e84cc77dbd",
         intel: "5b79d44a59d61feeb45aa4df1eea2606df4ce045f620d84a5edfd1a903bc3a4e"

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
