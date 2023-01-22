cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "2.0.3"
  sha256 arm:   "869dc169be819d26f84122cdd05bdbca0da792b5c418b004b8f8f7b567865681",
         intel: "536d8fdda5e3029c6c41bfc694eb6c1113020010841f579a671eeb0c841d55a9"

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
