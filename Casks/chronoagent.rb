cask "chronoagent" do
  version "1.9.8"
  sha256 :no_check

  url "https://downloads.econtechnologies.com/CA_Mac_Download.dmg"
  name "ChronoAgent"
  homepage "https://www.econtechnologies.com/"

  pkg "Install.pkg"

  uninstall pkgutil: "com.econtechnologies.pkg.ChronoAgent",
            quit:    "com.econtechnologies.backgrounder.CAMonitorBackgrounder"
end
