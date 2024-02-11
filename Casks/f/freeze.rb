cask "freeze" do
  version "4.0,316"
  sha256 "0145982cf6c97910a299cc06487d4fb1f74d7b2c9090ed9bac220fd487c3cd94"

  url "https://www.freezeapp.net/download/Freeze-#{version.csv.first}-#{version.csv.second}.zip"
  name "Freeze"
  desc "Amazon Glacier file transfer client"
  homepage "https://www.freezeapp.net/"

  livecheck do
    url "https://www.freezeapp.net/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Freeze.app"

  zap trash: [
    "~/Library/Application Scripts/seb.GlacierMac",
    "~/Library/Containers/seb.GlacierMac",
  ]
end
