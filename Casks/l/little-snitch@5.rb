cask "little-snitch@5" do
  on_sonoma :or_older do
    version "5.7.6"
    sha256 "f0a9905f0f4222273febf4f1ae1a330770a064b7454583bd48e8152cc4bb30f8"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sequoia :or_newer do
    version "5.8"
    sha256 "0cfd0a5e4b2d5baaee11e190c73fb3d81f00f41a34558d248e0e170b0fa73b39"

    # The plist file that the app checks doesn't list the newest version as of
    # writing, so we check the download page for older versions for now.
    livecheck do
      url "https://www.obdev.at/products/littlesnitch/download-previous-versions.html"
      regex(/LittleSnitch[._-]v?(#{version.major}(?:\.\d+)+)\.dmg/i)
    end
  end

  url "https://www.obdev.at/downloads/littlesnitch/legacy/LittleSnitch-#{version}.dmg"
  name "Little Snitch"
  desc "Host-based application firewall"
  homepage "https://www.obdev.at/products/littlesnitch/index.html"

  auto_updates true
  conflicts_with cask: [
    "little-snitch",
    "little-snitch@4",
  ]
  depends_on macos: ">= :big_sur"

  app "Little Snitch.app"

  zap trash: [
        "/Library/Application Support/Objective Development/Little Snitch",
        "/Library/Caches/at.obdev.LittleSnitchConfiguration",
        "/Library/Extensions/LittleSnitch.kext",
        "/Library/Little Snitch",
        "/Library/Logs/LittleSnitchDaemon.log",
        "/Library/StagedExtensions/Library/Extensions/LittleSnitch.kext",
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
end
