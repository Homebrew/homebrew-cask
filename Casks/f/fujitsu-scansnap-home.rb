cask "fujitsu-scansnap-home" do
  version "2.20.0"
  sha256 "887fc9b1b80c878d1aec20214aace40b65270da4d7461b4793a2214234a78272"

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
              "com.fujitsu.pfu.SSMenuBar",
              "com.fujitsu.pfu.Ssh*",
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
