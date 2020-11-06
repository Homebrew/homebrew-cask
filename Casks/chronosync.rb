cask "chronosync" do
  version "4.9.11"
  sha256 "57fc2dc9c0653036560cd1d10148400aa37dadd466a68ec846498ad9f82b3bbd"

  url "https://downloads.econtechnologies.com/CS4_Download.dmg"
  appcast "https://www.econtechnologies.com/UC/updatecheck.php?prod=ChronoSync&vers=#{version.major_minor}.0&lang=en&plat=mac&os=10.14.1&hw=i64&req=1"
  name "ChronoSync"
  desc "Synchronization and backup tool"
  homepage "https://www.econtechnologies.com/"

  pkg "Install.pkg"

  uninstall pkgutil: "com.econtechnologies.pkg.ChronoSyncApplication"
end
