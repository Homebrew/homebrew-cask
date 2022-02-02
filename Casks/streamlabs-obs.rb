cask "streamlabs-obs" do
  version "1.7.0"
  sha256 "d9b0c84edfb32c851dfcec1cd58e9f431fcc40adcb241041f819bec2cb18d015"

  url "https://slobs-cdn.streamlabs.com/Streamlabs+Desktop-#{version}.dmg"
  name "Streamlabs Desktop"
  desc "All-in-one live streaming software"
  homepage "https://streamlabs.com/"

  livecheck do
    url "https://streamlabs.com/streamlabs-desktop/download"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Streamlabs Desktop.app"

  zap trash: [
    "~/Library/Application Support/slobs-client",
    "~/Library/Application Support/slobs-plugins",
  ]
end
