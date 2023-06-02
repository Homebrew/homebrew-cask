cask "ppduck" do
  version "3.10.16"
  sha256 "e03a162603cc606a77cc8cf95b59ad097cf627113bc4b39ba72acf35204c3b15"

  url "https://download.ppduck.com/PPDuck#{version.major}_#{version}.dmg"
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
end
