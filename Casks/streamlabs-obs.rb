cask "streamlabs-obs" do
  version "1.7.1"
  sha256 "2c0cc7fa63fe1a9355c0a90ff04d749c83724156806d82ee3abc2f9ba7ac1122"

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
