cask "showyedge" do
  version "6.2.0"
  sha256 "61b16242a9ea82c3b893e701c1bac3ac1e10e2e2a98b7b7a21a2a3edc81201e5"

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
