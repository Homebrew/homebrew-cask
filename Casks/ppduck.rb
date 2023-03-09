cask "ppduck" do
  version "3.10.14"
  sha256 "95b0adb47bff7ae078078edeb2ee666ce0ad8e5411f0658cb65e67dc639ef58a"

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
