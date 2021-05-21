cask "chronoagent" do
  version "1.9.9"
  sha256 :no_check

  url "https://downloads.econtechnologies.com/CA_Mac_Download.dmg"
  name "ChronoAgent"
  homepage "https://www.econtechnologies.com/"

  livecheck do
    url "https://www.econtechnologies.com/downloads/downloads.html"
    strategy :page_match
    regex(/ChronoAgent\s*text.*?Version\s*(\d+(?:\.\d+)*)</mi)
  end

  pkg "Install.pkg"

  uninstall pkgutil:   "com.econtechnologies.pkg.ChronoAgent",
            launchctl: "com.econtechnologies.ChronoAgentRemote",
            quit:      "com.econtechnologies.backgrounder.CAMonitorBackgrounder"
end
