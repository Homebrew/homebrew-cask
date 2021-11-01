cask "showyedge" do
  version "5.2.0"
  sha256 "48dda464a5e20f77ab46d77f14cbd729e0873e7aa53b2f4a4c803a07d0f59263"

  url "https://github.com/pqrs-org/ShowyEdge/releases/download/v#{version}/ShowyEdge-#{version}.dmg",
      verified: "github.com/pqrs-org/ShowyEdge/"
  name "ShowyEdge"
  desc "Visible indicator of the current input source"
  homepage "https://pqrs.org/osx/ShowyEdge/"

  livecheck do
    url "https://appcast.pqrs.org/showyedge-appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "ShowyEdge.app"

  zap trash: [
    "~/Library/Caches/org.pqrs.ShowyEdge",
    "~/Library/Preferences/org.pqrs.ShowyEdge.plist",
  ]
end
