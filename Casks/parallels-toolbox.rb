cask "parallels-toolbox" do
  version "6.0.1-4541"
  sha256 "0229e670bad744a02c5349ab1bf31aa7ba8dff52840b9d410ce599b350f61aa6"

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
