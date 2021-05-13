cask "reikey" do
  version "1.4.2"
  sha256 "ceee2ece8dde1e1d8d498aa5d9782dbf5a62b324903732e08a97de086811446b"

  url "https://bitbucket.org/objective-see/deploy/downloads/ReiKey_#{version}.zip",
      verified: "bitbucket.org/objective-see/"
  name "ReiKey"
  desc "Scans, detects, and monitors keyboard taps"
  homepage "https://objective-see.com/products/reikey.html"

  depends_on macos: ">= :high_sierra"

  installer script: {
    executable: "#{staged_path}/ReiKey Installer.app/Contents/MacOS/ReiKey Installer",
    args:       ["-install"],
    sudo:       true,
  }

  uninstall script: {
    executable: "#{staged_path}/ReiKey Installer.app/Contents/MacOS/ReiKey Installer",
    args:       ["-uninstall"],
    sudo:       true,
  }

  zap trash: [
    "~/Library/Caches/SentryCrash/ReiKey Installer",
    "~/Library/Caches/SentryCrash/ReiKey Installer/Data",
    "~/Library/Caches/SentryCrash/ReiKey Installer/Data/ConsoleLog.txt",
    "~/Library/Caches/SentryCrash/ReiKey Installer/Data/CrashState.json",
    "~/Library/Caches/SentryCrash/ReiKey Installer/Reports",
  ]
end
