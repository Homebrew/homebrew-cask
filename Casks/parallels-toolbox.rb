cask "parallels-toolbox" do
  version "5.5.1-4410"
  sha256 "412bddebac28e229c7973dad6d702c67d1b42195b99b009af26ef036f5631349"

  url "https://download.parallels.com/toolbox/v#{version.major}/#{version}/ParallelsToolbox-#{version}.dmg"
  name "Parallels Toolbox"
  desc "Bundle with over 30 tools"
  homepage "https://www.parallels.com/products/toolbox/"

  livecheck do
    url "https://www.parallels.com/directdownload/toolbox/"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  installer manual: "Install Parallels Toolbox.app"

  uninstall delete: "/Applications/Parallels Toolbox.app",
            signal: ["TERM", "com.parallels.toolbox"]

  zap trash: [
    "~/Library/Application Scripts/*.com.parallels.toolbox",
    "~/Library/Application Scripts/com.parallels.toolbox.*-Safari-Extension",
    "~/Library/Application Support/com.parallels.toolbox",
    "~/Library/Group Containers/*.com.parallels.toolbox",
    "~/Library/Logs/ParallelsToolbox",
    "~/Library/Logs/prl.toolbox.ceplog.log",
    "~/Library/Logs/prl.toolbox.ceplog.xml",
    "~/Library/Preferences/*.com.parallels.toolbox.*.plist",
    "~/Library/Preferences/com.parallels.toolbox.*.plist",
    "~/Library/Preferences/com.parallels.toolbox.plist",
  ]
end
