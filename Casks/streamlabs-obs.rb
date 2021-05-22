cask "streamlabs-obs" do
  version "1.1.0"
  sha256 "ec4cf089d0ab0f2e4d526b83b285d83934860aee8cdfb10ef5e2589df749e375"

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
