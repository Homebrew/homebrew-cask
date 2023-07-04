cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "2.0.10"
  sha256 arm:   "5e868791f93a04566ddb7d6a3511b677e8f61070301e86e82a1a0aca98adbda0",
         intel: "3507e472568218e605bde3bf57f9b0d1c3a47b37d1659305518fb000f94e6081"

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
