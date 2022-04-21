cask "streamlabs-obs" do
  version "1.8.1"
  sha256 "2d67d4a258cb091450309cbc1cfeaca9c35a0405221e0a736d7261825eedbe25"

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
