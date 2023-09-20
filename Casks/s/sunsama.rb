cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "2.0.13"
  sha256 arm:   "e060da371a466a63b034e06c6078091c4bf850f0ae81c7f28f4d8649afe48722",
         intel: "ebe8afd0efba95f5224faaae77d0b3769e019a7751cb14c4d6636536df966616"

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
