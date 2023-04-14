cask "fujitsu-scansnap-home" do
  version "2.9.0"
  sha256 "00bde8def991762d6b5bce322b00f54b2da942fe4b9c114d23c11407d8b1eeab"

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
            ],
            quit:      [
              "com.fujitsu.pfu.SSMenuBar",
              "com.fujitsu.pfu.Ssh*",
            ],
            pkgutil:   "com.fujitsu.pfu.scansnap.Home.*"
end
