cask "streamlabs" do
  arch arm: "-arm64"

  version "1.19.6"
  sha256 arm:   "c29c4480bcaab170f963a5e7515b8197065fc10de5aad98273d620f1e3e0707d",
         intel: "0c21c13cf4cf30bd05dc91ef299d0ccf56b1a12dab3b739151a844664354ee94"

  url "https://slobs-cdn.streamlabs.com/Streamlabs+Desktop-#{version}#{arch}.dmg"
  name "Streamlabs Desktop"
  desc "All-in-one live streaming software"
  homepage "https://streamlabs.com/"

  livecheck do
    url "https://slobs-cdn.streamlabs.com/desktop-latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Streamlabs Desktop.app"

  zap trash: [
    "~/Library/Application Support/slobs-client",
    "~/Library/Application Support/slobs-plugins",
    "~/Library/Preferences/com.streamlabs.slobs.plist",
    "~/Library/Saved Application State/com.streamlabs.slobs.savedState",
  ]
end
