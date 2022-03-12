cask "chronoagent" do
  version "1.9.9"
  sha256 :no_check

  url "https://downloads.econtechnologies.com/CA_Mac_Download.dmg"
  name "ChronoAgent"
  desc "Remote file sharing for ChronoSync"
  homepage "https://www.econtechnologies.com/"

  livecheck do
    url "https://www.econtechnologies.com/downloads/downloads.html"
    regex(/>\s*ChronoAgent.*?Version\s+(\d+(?:\.\d+)+)[\s<]+/i)
  end

  pkg "Install.pkg"

  uninstall pkgutil:   "com.econtechnologies.pkg.ChronoAgent",
            launchctl: "com.econtechnologies.ChronoAgentRemote",
            quit:      "com.econtechnologies.backgrounder.CAMonitorBackgrounder"
end
