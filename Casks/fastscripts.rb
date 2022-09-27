cask "fastscripts" do
  version "3.2.2,1723"
  sha256 "cf1522649ecd9103e61a654cbd4cdd61b2fa125f22f88f25e8e257659b4159d2"

  url "https://redsweater.com/fastscripts/FastScripts#{version.csv.first}.zip"
  name "FastScripts"
  desc "Tool for running time-saving scripts"
  homepage "https://redsweater.com/fastscripts/"

  livecheck do
    url "https://redsweater.com/fastscripts/appcast#{version.major}.php"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "FastScripts.app"

  zap trash: [
    "~/Library/Application Support/FastScripts",
    "~/Library/Application Support/FastScripts Script Runner",
    "~/Library/Caches/com.red-sweater.fastscripts#{version.major}",
    "~/Library/Preferences/com.red-sweater.fastscripts#{version.major}.plist",
    "~/Library/WebKit/com.red-sweater.fastscripts#{version.major}",
  ]
end
