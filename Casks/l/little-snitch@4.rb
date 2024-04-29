cask "little-snitch@4" do
  on_mojave :or_older do
    version "4.5.2"
    sha256 "52116bb4e5186fed441c7cab835b4dd822243248f402334b486f0c7b20062c13"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "4.6.1"
    sha256 "bb4c609b0a0c353d42f99f00513cb653acdf6d8c857930f146475ed89a46ff82"

    livecheck do
      url "https://www.obdev.at/products/littlesnitch/releasenotes#{version.major}.html"
      regex(/Little\sSnitch\s(\d+(?:\.\d+)+)/i)
    end
  end

  url "https://www.obdev.at/downloads/littlesnitch/legacy/LittleSnitch-#{version}.dmg"
  name "Little Snitch"
  desc "Host-based application firewall"
  homepage "https://www.obdev.at/products/littlesnitch/index.html"

  auto_updates true
  depends_on macos: [
    :el_capitan,
    :sierra,
    :high_sierra,
    :mojave,
    :catalina,
  ]
  container type: :naked

  installer manual: "LittleSnitch-#{version}.dmg"

  uninstall launchctl: [
    "at.obdev.littlesnitchd",
    "at.obdev.LittleSnitchHelper",
    "at.obdev.LittleSnitchUIAgent",
  ]

  zap trash: [
        "/Library/Application Support/Objective Development/Little Snitch",
        "/Library/Caches/at.obdev.LittleSnitchConfiguration",
        "/Library/Extensions/LittleSnitch.kext", # This kext should not be uninstalled
        "/Library/Little Snitch",
        "/Library/Logs/LittleSnitchDaemon.log",
        "/Library/StagedExtensions/Library/Extensions/LittleSnitch.kext", # This kext should not be uninstalled
        "~/Library/Application Support/Little Snitch",
        "~/Library/Caches/at.obdev.LittleSnitchAgent",
        "~/Library/Caches/at.obdev.LittleSnitchConfiguration",
        "~/Library/Caches/at.obdev.LittleSnitchHelper",
        "~/Library/Caches/at.obdev.LittleSnitchSoftwareUpdate",
        "~/Library/Caches/com.apple.helpd/Generated/at.obdev.LittleSnitchConfiguration.help*",
        "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/at.obdev.LittleSnitchConfiguration.help*",
        "~/Library/Logs/Little Snitch Agent.log",
        "~/Library/Logs/Little Snitch Helper.log",
        "~/Library/Logs/Little Snitch Installer.log",
        "~/Library/Logs/Little Snitch Network Monitor.log",
        "~/Library/Preferences/at.obdev.LittleSnitchAgent.plist",
        "~/Library/Preferences/at.obdev.LittleSnitchConfiguration.plist",
        "~/Library/Preferences/at.obdev.LittleSnitchInstaller.plist",
        "~/Library/Preferences/at.obdev.LittleSnitchNetworkMonitor.plist",
        "~/Library/Preferences/at.obdev.LittleSnitchSoftwareUpdate.plist",
        "~/Library/Saved Application State/at.obdev.LittleSnitchInstaller.savedState",
        "~/Library/WebKit/at.obdev.LittleSnitchConfiguration",
      ],
      rmdir: "/Library/Application Support/Objective Development"

  caveats do
    kext
    reboot
  end
end
