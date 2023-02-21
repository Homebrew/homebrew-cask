cask "chronosync" do
  version "10.3.3"
  sha256 :no_check

  url "https://downloads.econtechnologies.com/CS4_Download.dmg"
  name "ChronoSync"
  desc "Synchronization and backup tool"
  homepage "https://www.econtechnologies.com/"

  livecheck do
    url "https://www.econtechnologies.com/UC/updatecheck.php?prod=ChronoSync&lang=en&plat=mac&os=10.14.1&hw=i64&req=1&vers=#{version}"
    regex(/VERSION=(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  pkg "Install.pkg"

  uninstall quit:    [
              "com.econtechnologies.chronosync",
              "com.econtechnologies.backgrounder.chronosync",
            ],
            pkgutil: "com.econtechnologies.pkg.ChronoSyncApplication"
end
