cask "streamlabs-obs" do
  version "0.27.2"
  sha256 "15d1c2803d6be6a66c4e7b12f65304cc68052e722bcb435dcf3f4415eb61ad99"

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
