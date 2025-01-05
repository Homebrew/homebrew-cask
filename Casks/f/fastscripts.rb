cask "fastscripts" do
  version "3.3.4"
  sha256 "0348cad611ac70e9cb5013af0cdc8fd3f9090a4aea3556ae4d9a5c14d151e852"

  url "https://redsweater.com/fastscripts/FastScripts#{version}.zip"
  name "FastScripts"
  desc "Tool for running time-saving scripts"
  homepage "https://redsweater.com/fastscripts/"

  livecheck do
    url "https://redsweater.com/fastscripts/appcast#{version.major}.php"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "FastScripts.app"

  zap trash: [
    "~/Library/Application Support/FastScripts Script Runner",
    "~/Library/Application Support/FastScripts",
    "~/Library/Caches/com.red-sweater.fastscripts#{version.major}",
    "~/Library/Preferences/com.red-sweater.fastscripts#{version.major}.plist",
    "~/Library/WebKit/com.red-sweater.fastscripts#{version.major}",
  ]
end
