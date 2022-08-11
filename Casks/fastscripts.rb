cask "fastscripts" do
  version "3.1.2,1661"
  sha256 "6eeee622d1ba70dafe707247f8d7cd7dfbddc5f59918c2dd565acb1deafb2963"

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
