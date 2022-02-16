cask "freeze" do
  version "3.15,307"
  sha256 "c6b08d03139820c997b8870a48a7e6ddf0d64f9b76c2d18d38fd2838e49aeb8e"

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
