cask "parallels-toolbox" do
  version "6.6.1-4908"
  sha256 "3fc50de1c58189b754e51e73d43a44a2d3588c2087e02a674d484e8ee20f7926"

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
