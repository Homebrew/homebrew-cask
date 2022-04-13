cask "macgdbp" do
  version "2.1.1,211.3"
  sha256 "666b0f61a2a1d9a609589250f4337ff50f550122c181c3df1af48266980fccb2"

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
