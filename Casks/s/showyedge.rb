cask "showyedge" do
  version "6.4.0"
  sha256 "c0bc769204c53c8729a35c74161fb08f089cb517bf00832fc386ba29c5cc6feb"

  url "https://github.com/pqrs-org/ShowyEdge/releases/download/v#{version}/ShowyEdge-#{version}.dmg",
      verified: "github.com/pqrs-org/ShowyEdge/"
  name "ShowyEdge"
  desc "Visible indicator of the current input source"
  homepage "https://showyedge.pqrs.org/"

  livecheck do
    url "https://appcast.pqrs.org/showyedge-appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :ventura

  app "ShowyEdge.app"

  zap trash: [
    "~/Library/Application Scripts/org.pqrs.ShowyEdge",
    "~/Library/Caches/org.pqrs.ShowyEdge",
    "~/Library/Containers/org.pqrs.ShowyEdge",
    "~/Library/Preferences/org.pqrs.ShowyEdge.plist",
  ]
end
