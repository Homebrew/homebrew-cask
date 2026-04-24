cask "sharefile" do
  version "26.04.20,20p795"
  sha256 "079ab663c401f30e7a77fe243c320424c805acad642ccfc9325934866ac2f2f3"

  url "https://dl.sharefile.com/sfmac/ShareFile%20v#{version.csv.first}%20(#{version.csv.second}).dmg"
  name "ShareFile"
  desc "Client for the Progress ShareFile storage service"
  homepage "https://www.sharefile.com/"

  livecheck do
    url "https://dl.sharefile.com/sfmac"
    regex(/ShareFile.*?[\s._-]v?(\d+(?:\.\d+)+)\s*\(([^)]+)\)/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :ventura"

  pkg "Install ShareFile.pkg"

  uninstall launchctl: "com.citrixfiles.ens.service",
            pkgutil:   "com.sharefile.desktop.widget",
            delete:    "/Applications/ShareFile.app"

  zap trash: [
    "~/.sharefile.swp",
    "~/Library/Application Scripts/42TZTUWV4Z.group.sharefile.desktop",
    "~/Library/Application Scripts/com.sharefile.desktop.widget.CitrixFileProvider",
    "~/Library/Application Scripts/RM4N8HY7K5.group.sharefile.desktop",
    "~/Library/Application Support/com.sharefile.desktop.widget",
    "~/Library/Application Support/ShareFileRecovery",
    "~/Library/Caches/com.citrixfiles.ens.service",
    "~/Library/Caches/com.sharefile.desktop.widget",
    "~/Library/Containers/com.sharefile.desktop.widget.CitrixFileProvider",
    "~/Library/Group Containers/42TZTUWV4Z.group.sharefile.desktop",
    "~/Library/Group Containers/RM4N8HY7K5.group.sharefile.desktop",
    "~/Library/HTTPStorages/com.sharefile.desktop.widget*",
    "~/Library/LaunchAgents/com.citrixfiles.ens.service.plist",
    "~/Library/Logs/com.sharefile.desktop.widget",
    "~/Library/Preferences/com.citrixfiles.ens.service.plist",
    "~/Library/Preferences/com.sharefile.desktop.widget.plist",
    "~/Library/WebKit/com.sharefile.desktop.widget",
  ]
end
