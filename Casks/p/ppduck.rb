cask "ppduck" do
  version "3.10.20"
  sha256 "6a433d9ed5e742229deb5ce222815a568041177244eedf591f537111388d1bba"

  url "https://ppduck.com/static/downloads/PPDuck#{version.major}_#{version}.dmg"
  name "PPDuck"
  desc "Integrates several image compression algorithms"
  homepage "https://ppduck.com/"

  livecheck do
    url :homepage
    regex(/PPDuck.[._-]?(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "PPDuck#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/PPDuck#{version.major}",
    "~/Library/Logs/PPDuck#{version.major}",
    "~/Library/Preferences/com.weiju.ppduck.plist",
  ]

  caveats do
    requires_rosetta
  end
end
