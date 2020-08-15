cask "streamlabs-obs" do
  version "0.23.4"
  sha256 "dd926ff01ab1f57017a3d24361415eae6ed5c05a1efd4f9cb880d24471c32a5e"

  url "https://slobs-cdn.streamlabs.com/Streamlabs+OBS-#{version}.dmg"
  appcast "https://github.com/stream-labs/streamlabs-obs/releases.atom"
  name "Streamlabs OBS"
  homepage "https://streamlabs.com/"

  auto_updates true

  app "Streamlabs OBS.app"

  zap trash: [
    "~/Library/Application Support/slobs-client",
    "~/Library/Application Support/slobs-plugins",
  ]
end
