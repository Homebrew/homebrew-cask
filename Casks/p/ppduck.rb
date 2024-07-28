cask "ppduck" do
  version "3.10.19"
  sha256 "36b563c048a53dd16a50b37a0702e27733d5da8a486f0d480c8b5c33c7d461f2"

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

  caveats do
    requires_rosetta
  end
end
