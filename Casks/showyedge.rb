cask "showyedge" do
  version "5.4.0"
  sha256 "9e11cbfd77da8fb64dbd585c3e59d1fc69547f81b38f59a6468e3a84c0c52e2b"

  url "https://github.com/pqrs-org/ShowyEdge/releases/download/v#{version}/ShowyEdge-#{version}.dmg",
      verified: "github.com/pqrs-org/ShowyEdge/"
  name "ShowyEdge"
  desc "Visible indicator of the current input source"
  homepage "https://showyedge.pqrs.org/"

  livecheck do
    url "https://appcast.pqrs.org/showyedge-appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :big_sur"

  app "ShowyEdge.app"

  zap trash: [
    "~/Library/Caches/org.pqrs.ShowyEdge",
    "~/Library/Preferences/org.pqrs.ShowyEdge.plist",
  ]
end
