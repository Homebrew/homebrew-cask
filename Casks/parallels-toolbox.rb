cask "parallels-toolbox" do
  version "4.5.0-3860"
  sha256 "ac84fdb201250d67e4253bd76f991dd03a3c48d9b3520ef4508805cf79dc45da"

  url "https://download.parallels.com/toolbox/v#{version.major}/#{version}/ParallelsToolbox-#{version}.dmg"
  name "Parallels Toolbox"
  desc "Bundle with over 30 tools"
  homepage "https://www.parallels.com/products/toolbox/"

  livecheck do
    url "https://www.parallels.com/directdownload/toolbox/"
    strategy :header_match
  end

  installer manual: "Install Parallels Toolbox.app"

  uninstall delete: "/Applications/Parallels Toolbox.app",
            signal: ["TERM", "com.parallels.toolbox"]

  zap trash: [
    "~/Library/Application Support/com.parallels.toolbox",
    "~/Library/Group Containers/*.com.parallels.toolbox",
    "~/Library/Logs/prl.toolbox.ceplog.log",
    "~/Library/Logs/ParallelsToolbox",
    "~/Library/Logs/prl.toolbox.ceplog.xml",
    "~/Library/Preferences/com.parallels.toolbox.plist",
  ]
end
