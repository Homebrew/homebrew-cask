cask "streamlabs-obs" do
  version "0.25.0"
  sha256 "b75a7a30db2c0bacaf50a141bfb5565f78d162cb7151449c13be3004b0d0891c"

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
