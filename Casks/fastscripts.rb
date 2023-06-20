cask "fastscripts" do
  version "3.2.7"
  sha256 "bd88ca14b468ef59b327ce8e5ed7ed6e33e841314419d9298a2b46ca6c75c098"

  url "https://redsweater.com/fastscripts/FastScripts#{version}.zip"
  name "FastScripts"
  desc "Tool for running time-saving scripts"
  homepage "https://redsweater.com/fastscripts/"

  livecheck do
    url "https://redsweater.com/fastscripts/appcast#{version.major}.php"
    strategy :sparkle, &:short_version
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
