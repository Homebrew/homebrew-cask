cask "streamlabs-obs" do
  version "1.0.5"
  sha256 "b1e2578b3e7122908059e60eb56b7148e341395d9e242a68cb580cfeb8eb0208"

  url "https://slobs-cdn.streamlabs.com/Streamlabs+OBS-#{version}.dmg"
  name "Streamlabs OBS"
  desc "All-in-one live streaming software"
  homepage "https://streamlabs.com/"

  livecheck do
    url "https://slobs-cdn.streamlabs.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Streamlabs OBS.app"

  zap trash: [
    "~/Library/Application Support/slobs-client",
    "~/Library/Application Support/slobs-plugins",
  ]
end
