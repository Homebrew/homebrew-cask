cask "showyedge" do
  version "6.3.0"
  sha256 "72a51e8ba1b758c8178bad272c704fbb3d4d87526f999e5c2d05c0d0a0e9a269"

  url "https://github.com/pqrs-org/ShowyEdge/releases/download/v#{version}/ShowyEdge-#{version}.dmg",
      verified: "github.com/pqrs-org/ShowyEdge/"
  name "ShowyEdge"
  desc "Visible indicator of the current input source"
  homepage "https://showyedge.pqrs.org/"

  livecheck do
    url "https://appcast.pqrs.org/showyedge-appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :ventura"

  app "ShowyEdge.app"

  zap trash: [
    "~/Library/Caches/org.pqrs.ShowyEdge",
    "~/Library/Preferences/org.pqrs.ShowyEdge.plist",
  ]
end
