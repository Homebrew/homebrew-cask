cask "freeze" do
  version "3.16,312"
  sha256 "506ac942f5fd105858a8415d7c3d4b6036d75e7e537310b4faae71cb4bd7e59b"

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
