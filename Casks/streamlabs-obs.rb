cask "streamlabs-obs" do
  version "1.0.1"
  sha256 "27e1990a9e875a7e026de682e2de80c1bb3a7f79bd394e4974ae43f3a28d03a4"

  url "https://slobs-cdn.streamlabs.com/Streamlabs+OBS-#{version}.dmg"
  appcast "https://slobs-cdn.streamlabs.com/latest-mac.yml"
  name "Streamlabs OBS"
  desc "All-in-one live streaming software"
  homepage "https://streamlabs.com/"

  auto_updates true

  app "Streamlabs OBS.app"

  zap trash: [
    "~/Library/Application Support/slobs-client",
    "~/Library/Application Support/slobs-plugins",
  ]
end
