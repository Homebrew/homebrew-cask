cask "stash" do
    version "2.5.4,274"
    sha256 "4a5b26d330af2b72b5b1c2abf9251a0e903a3fe5505e99927584bc232631876b"
  
    url "https://mac-release-static.stash.ws/Stash-build-#{version.csv.second}.zip"
    name "Stash"
    desc "A rule-based network toolbox"
    homepage "https://stash.ws/"
  
    livecheck do
      url "https://mac-release.stash.ws/appcast.xml"
      strategy :sparkle do |item|
        match = item.url.match(/[._-](\d+(?:\.\d+)+)[._-](\d+)[._-](\h+)\.zip/i)
        next if match.blank?
  
        "#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  
    auto_updates true
    depends_on macos: ">= :big_sur"
  
    app "Stash.app"
  
    uninstall launchctl: "ws.stash.app.mac.daemon.helper",
              delete:    "/Library/PrivilegedHelperTools/ws.stash.app.mac.daemon.helper"
  
    zap delete: [
      "~/Library/Application Support/Stash",
      "~/Library/Application Support/ws.stash.app.mac",
      "~/Library/Caches/ws.stash.app.mac",
      "~/Library/Caches/ws.stash.app.mac.dashboard",
      "~/Library/HTTPStorages/ws.stash.app.mac",
      "~/Library/HTTPStorages/ws.stash.app.mac.dashboard",
      "~/Library/Preferences/ws.stash.app.mac.plist",
    ]
  end