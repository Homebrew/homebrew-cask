cask "macgdbp" do
  version "2.1.2,212.0"
  sha256 "2951d17fadbdb50df79f50a386265d0cdcd8fb5526348712a86e2a801d4064cc"

  url "https://www.bluestatic.org/downloads/macgdbp/macgdbp-#{version.csv.first}.zip"
  name "MacGDBp"
  desc "Live, interactive debugging of your running PHP applications"
  homepage "https://www.bluestatic.org/software/macgdbp/"

  livecheck do
    url "https://www.bluestatic.org/software/macgdbp/appcast.xml"
    strategy :sparkle
  end

  app "MacGDBp.app"

  zap trash: "~/Library/Preferences/org.bluestatic.macgdbp.plist"
end
