cask "parallels-toolbox" do
  version "6.7.0-5122"
  sha256 "c8767473862cc12accf447415e89ac315c5f4353c1031eb82be727312feffc34"

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

  uninstall signal: ["TERM", "com.parallels.toolbox"],
            delete: "/Applications/Parallels Toolbox.app"

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
