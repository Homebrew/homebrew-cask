cask "fastscripts" do
  version "3.3.7"
  sha256 "88aa7ae0d3d222855d5cd73408adfe1f472547e0efdd5bf4e4e63f2c91b39768"

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
