cask "streamlabs-obs" do
  version "1.0.2"
  sha256 "5815ac45482a1427ea5ad30c6233cba5670e0a6ad4014a7873cec639c34f66a2"

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
