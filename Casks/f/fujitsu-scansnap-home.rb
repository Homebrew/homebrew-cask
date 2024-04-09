cask "fujitsu-scansnap-home" do
  version "2.22.0"
  sha256 "9ad96dcf8e61871213cd4dac7b559a96382ed2c8285b127bd7beff15b178f4be"

  url "https://origin.pfultd.com/downloads/ss/sshinst/m-#{version.no_dots}/MacSSHOfflineInstaller_#{version.dots_to_underscores}.dmg",
      verified: "origin.pfultd.com/"
  name "ScanSnap Home"
  desc "Fujitsu ScanSnap Scanner software"
  homepage "https://www.fujitsu.com/global/products/computing/peripheral/scanners/soho/sshome/"

  livecheck do
    url "https://www.pfu.ricoh.com/global/scanners/scansnap/dl/mac-sshoffline.html"
    regex(/m-sshoffline[._-]v?(\d+(?:[._]\d+)+)\.html/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
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
              "com.fujitsu.pfu.Ssh*",
              "com.fujitsu.pfu.SSMenuBar",
            ],
            pkgutil:   "com.fujitsu.pfu.scansnap.Home.*"

  zap delete: "/Library/Application Support/PFU",
      trash:  [
        "~/Library/Application Support/PFU",
        "~/Library/Caches/jp.co.pfu.SSHomeWizard",
        "~/Library/HTTPStorages/jp.co.pfu.SSHomeWizard",
        "~/Library/Preferences/com.fujitsu.pfu.*",
        "~/Library/Saved Application State/com.fujitsu.pfu.ScanSnapHome.savedState",
        "~/Library/Saved Application State/jp.co.pfu.SSHomeWizard.savedState",
      ]
end
