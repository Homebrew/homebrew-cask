cask "bricksmith" do
  version "3.1.0"
  sha256 "7ea1991b68ae9a75e3107f4df0f01a9980e17f889536fd7cae0ba8c6f56b7d67"

  url "https://downloads.sourceforge.net/bricksmith/bricksmith/Bricksmith%20#{version.major_minor}/BricksmithComplete#{version.major_minor}.zip",
      verified: "downloads.sourceforge.net/bricksmith/"
  name "Bricksmith"
  desc "Virtual Lego modelling"
  homepage "https://bricksmith.sourceforge.io/"

  livecheck do
    url "https://bricksmith.sourceforge.io/files/bricksmith_appcast.xml"
    strategy :sparkle
  end

  app "Bricksmith/Bricksmith.app"

  zap trash: "~/Library/Preferences/com.AllenSmith.Bricksmith.plist"
end
