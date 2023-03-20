cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "2.0.6"
  sha256 arm:   "37ba553284bc770ff3320389d4178e751129692d2f410ef6ce24f5fd4ce15749",
         intel: "04f178d45f142f2208de289bda024e996ad3979490e0a4a51281e80d788160fd"

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
