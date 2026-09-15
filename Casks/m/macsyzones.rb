cask "macsyzones" do
  version "3.1"
  sha256 "d3f83f69d6827821e9da6e22b4a9ffe213f3231b73ba7b200ae635bd50276904"

  url "https://github.com/rohanrhu/MacsyZones/releases/download/v#{version}/MacsyZones.zip"
  name "MacsyZones"
  desc "Window management utility"
  homepage "https://macsyzones.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MacsyZones.app"

  zap trash: [
    "~/Library/Application Support/MacsyZones",
    "~/Library/Logs/MacsyZones",
    "~/Library/Preferences/com.macsyzones.MacsyZones.plist",
  ]
end
