cask "streamlabs-obs" do
  version "1.0.7"
  sha256 "451a147447d8671a47ac944e287fabadb1f72585af018f73c57ad5a2f89aeedf"

  url "https://slobs-cdn.streamlabs.com/Streamlabs+OBS-#{version}.dmg"
  name "Streamlabs OBS"
  desc "All-in-one live streaming software"
  homepage "https://streamlabs.com/"

  livecheck do
    url "https://slobs-cdn.streamlabs.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Streamlabs OBS.app"

  zap trash: [
    "~/Library/Application Support/slobs-client",
    "~/Library/Application Support/slobs-plugins",
  ]
end
