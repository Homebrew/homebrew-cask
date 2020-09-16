cask "reikey" do
  version "1.4.1"
  sha256 "61e13dd9b3bd71aa37f73d5f854a0bd76ddff979cd7646a65a7c607daafd08e0"

  # bitbucket.org/objective-see/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/ReiKey_#{version}.zip"
  appcast "https://objective-see.com/products/changelogs/ReiKey.txt"
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
