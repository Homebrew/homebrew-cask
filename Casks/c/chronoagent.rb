cask "chronoagent" do
  version "11.0.1"
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

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/ChronoAgent Help Center*/",
    "~/Library/Containers/com.apple.helpviewer/Data/com.econtechnologies.preference.chronoagent.*",
    "~/Library/Preferences/com.econtechnologies.chronoagent.prefPane.plis",
  ]
end
