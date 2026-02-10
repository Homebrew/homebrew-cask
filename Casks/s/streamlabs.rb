cask "streamlabs" do
  arch arm: "-arm64"

  version "1.20.7"
  sha256 arm:   "1cbae6b436ed6bffe0925eddaf02e55b74b14ad518ea694a68009c17a814615c",
         intel: "9cf5b89a615da8629ac5bc9c47f68486da3c008690335e73fbefba9bf30b054f"

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
