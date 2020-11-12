cask "chronosync" do
  version "4.9.12"
  sha256 "7fa6484511f0ff700eee104f5163016c9853de840adf4084655f462657a71592"

  url "https://downloads.econtechnologies.com/CS4_Download.dmg"
  appcast "https://www.econtechnologies.com/UC/updatecheck.php?prod=ChronoSync&vers=#{version.major_minor}.0&lang=en&plat=mac&os=10.14.1&hw=i64&req=1"
  name "ChronoSync"
  desc "Synchronization and backup tool"
  homepage "https://www.econtechnologies.com/"

  pkg "Install.pkg"

  uninstall pkgutil: "com.econtechnologies.pkg.ChronoSyncApplication"
end
