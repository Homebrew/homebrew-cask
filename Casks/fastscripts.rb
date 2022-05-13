cask "fastscripts" do
  version "3.1,1632"
  sha256 "780d99b58d67ae0b17fa5bae6cd79c5dcaba6e25a14e5a660024f767a7155c20"

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
