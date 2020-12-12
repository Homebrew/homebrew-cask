cask "streamlabs-obs" do
  version "0.26.1"
  sha256 "d0b1e95a959ff406a8defd654d3fb2ede4431df6c86b6a0fcdb280bace25af59"

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
