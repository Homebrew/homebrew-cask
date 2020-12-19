cask "streamlabs-obs" do
  version "0.26.2"
  sha256 "1390bd9e565d9d8d493fe6a008bf46b226a582ec0c669c464dad8c4ce8289038"

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
