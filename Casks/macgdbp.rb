cask "macgdbp" do
  version "2.1,204.5"
  sha256 "0dcd472d65ca20cd3e5680865d63556c4cf66738f3aef29a4538503c5ee370a0"

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
