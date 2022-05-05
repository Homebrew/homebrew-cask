cask "little-snitch" do
  version "5.4.1"
  sha256 "dd10a2269158a68f0fce32bb82fa5f5cc2ff22402aeaac68c3e774a905f483e5"

  url "https://www.obdev.at/downloads/littlesnitch/LittleSnitch-#{version}.dmg"
  name "Little Snitch"
  desc "Host-based application firewall"
  homepage "https://www.obdev.at/products/littlesnitch/index.html"

  livecheck do
    url "https://www.obdev.at/products/littlesnitch/download.html"
    regex(%r{href=.*?/LittleSnitch-(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Little Snitch.app"

  zap trash: [
    "/Library/Application Support/Objective Development/Little Snitch",
    "/Library/Caches/at.obdev.LittleSnitchConfiguration",
    "/Library/Little Snitch",
    "/Library/Logs/LittleSnitchDaemon.log",
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
    # These kext's should not be uninstalled by Cask
    "/Library/Extensions/LittleSnitch.kext",
    "/Library/StagedExtensions/Library/Extensions/LittleSnitch.kext",
  ],
      rmdir: "/Library/Application Support/Objective Development"
end
