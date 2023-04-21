cask "fujitsu-scansnap-home" do
  version "2.10.0"
  sha256 "c7c58464fc9d9997acd347966dbb3f8d225857a93ca7c523c6d170cc8d240f07"

  url "https://origin.pfultd.com/downloads/ss/sshinst/m-#{version.no_dots}/MacSSHOfflineInstaller_#{version.dots_to_underscores}.dmg",
      verified: "origin.pfultd.com/"
  name "ScanSnap Home"
  desc "Fujitsu ScanSnap Scanner software"
  homepage "https://www.fujitsu.com/global/products/computing/peripheral/scanners/soho/sshome/"

  # Some of the release titles contain a typo where a space is omitted, so this
  # regex is a bit extreme about whitespace to ensure we match all the versions.
  livecheck do
    url "https://www.pfu.fujitsu.com/imaging/ss_hist/en/mac/index.html"
    regex(/ScanSnap\s*Home\s*for\s*Mac\s*v?(\d+(?:\.\d+)+)\s*Released/i)
  end

  depends_on macos: ">= :sierra"
  container nested: "Download/MacSSHomeInstaller_#{version.dots_to_underscores}.dmg"

  pkg "ScanSnap Home.pkg"

  uninstall launchctl: [
              "com.fujitsu.pfu.SshRegister",
              "com.fujitsu.pfu.SshResident",
              "com.fujitsu.pfu.SshSCloudWatch",
              "com.ricoh.pfu.SshAutoLaunch",
            ],
            quit:      [
              "com.fujitsu.pfu.SSMenuBar",
              "com.fujitsu.pfu.Ssh*",
            ],
            pkgutil:   "com.fujitsu.pfu.scansnap.Home.*"

  zap trash:  [
        "~/Library/Application Support/PFU",
        "~/Library/Caches/jp.co.pfu.SSHomeWizard",
        "~/Library/HTTPStorages/jp.co.pfu.SSHomeWizard",
        "~/Library/Preferences/com.fujitsu.pfu.SSMenuBar.plist",
        "~/Library/Preferences/com.fujitsu.pfu.ScanSnapCloudMode.plist",
        "~/Library/Preferences/com.fujitsu.pfu.ScanSnapHome.plist",
        "~/Library/Preferences/com.fujitsu.pfu.ScanSnapHomeOCRWrapper.plist",
        "~/Library/Preferences/com.fujitsu.pfu.ScanSnapHomeSCloudInfo.plist",
        "~/Library/Preferences/com.fujitsu.pfu.ScanSnapHomeSetting.plist",
        "~/Library/Preferences/com.fujitsu.pfu.ScanSnapTutorial.plist",
        "~/Library/Preferences/com.fujitsu.pfu.ScanSnapXPCService.plist",
        "~/Library/Preferences/com.fujitsu.pfu.SshImgMonitor.plist",
        "~/Library/Preferences/com.fujitsu.pfu.SshResident.plist",
        "~/Library/Saved Application State/com.fujitsu.pfu.ScanSnapHome.savedState",
        "~/Library/Saved Application State/jp.co.pfu.SSHomeWizard.savedState",
      ],
      delete: "/Library/Application Support/PFU"
end
