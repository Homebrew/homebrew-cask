cask "macgdbp" do
  version "2.0.3,203.1"
  sha256 "1f80a3868ccb1023c602337a925b964aebde9da7c90f3c27679f5becd5c6d071"

  url "https://www.bluestatic.org/downloads/macgdbp/macgdbp-#{version.before_comma}.zip"
  name "MacGDBp"
  desc "Live, interactive debugging of your running PHP applications"
  homepage "https://www.bluestatic.org/software/macgdbp/"

  livecheck do
    url "https://www.bluestatic.org/software/macgdbp/appcast.xml"
    strategy :sparkle
  end

  app "MacGDBp.app"
end
