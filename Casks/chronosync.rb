cask "chronosync" do
  version "10.0.0"
  sha256 :no_check

  url "https://downloads.econtechnologies.com/CS4_Download.dmg"
  name "ChronoSync"
  desc "Synchronization and backup tool"
  homepage "https://www.econtechnologies.com/"

  livecheck do
    url "https://www.econtechnologies.com/UC/updatecheck.php?prod=ChronoSync&lang=en&plat=mac&os=10.14.1&hw=i64&req=1&vers=#{version}"
    regex(/VERSION=(\d+(?:\.\d+)+)/i)
  end

  pkg "Install.pkg"

  uninstall quit:    "com.econtechnologies.chronosync",
            pkgutil: "com.econtechnologies.pkg.ChronoSyncApplication"
end
