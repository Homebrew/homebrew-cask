cask "ppduck" do
  version "3.10.15"
  sha256 "b0011a78573949025038aa95710262d670a2cd8032b77449d0415ea4acb7bb2c"

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
