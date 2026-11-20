cask "streamlabs" do
  arch arm: "-arm64"

  version "1.21.6"
  sha256 arm:   "60be6614cf6e32d065cb04b63e29e54f7af25539604296ca17eb3b7b48d2c569",
         intel: "79ccb708da01a409a50effbde17a2066d37e4c96b3f0940137851732fa83c1a2"

  url "https://slobs-cdn.streamlabs.com/Streamlabs+Desktop-#{version}#{arch}.dmg"
  name "Streamlabs Desktop"
  desc "All-in-one live streaming software"
  homepage "https://streamlabs.com/"

  livecheck do
    url "https://slobs-cdn.streamlabs.com/desktop-latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "Streamlabs Desktop.app"

  zap trash: [
    "~/Library/Application Support/slobs-client",
    "~/Library/Application Support/slobs-plugins",
    "~/Library/Preferences/com.streamlabs.slobs.plist",
    "~/Library/Saved Application State/com.streamlabs.slobs.savedState",
  ]
end
