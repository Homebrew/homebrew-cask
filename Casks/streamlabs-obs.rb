cask "streamlabs-obs" do
  version "1.8.2"
  sha256 "fb251985c0541d611b2d8c8bf209c186a8dc669d6511349a82e63c76fada0972"

  url "https://slobs-cdn.streamlabs.com/Streamlabs+Desktop-#{version}.dmg"
  name "Streamlabs Desktop"
  desc "All-in-one live streaming software"
  homepage "https://streamlabs.com/"

  livecheck do
    url "https://streamlabs.com/streamlabs-desktop/download"
    strategy :header_match
    regex(/Streamlabs\+Desktop\+Setup\+(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Streamlabs Desktop.app"

  zap trash: [
    "~/Library/Application Support/slobs-client",
    "~/Library/Application Support/slobs-plugins",
  ]
end
