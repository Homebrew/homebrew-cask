cask "parallels-toolbox" do
  version "6.0.0-4536"
  sha256 "491d3739422988fda6934b4fc4dc1334b6dfea86802da56d55a6ea56dadb4910"

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
