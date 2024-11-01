cask "chronosync" do
  version "11.0.5"
  sha256 :no_check

  url "https://downloads.econtechnologies.com/CS4_Download.dmg"
  name "ChronoSync"
  desc "Synchronisation and backup tool"
  homepage "https://www.econtechnologies.com/"

  livecheck do
    url "https://www.econtechnologies.com/chronosync/whats-new.html"
    regex(/ChronoSync\s(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  pkg "Install.pkg"

  uninstall quit:    [
              "com.econtechnologies.backgrounder.chronosync",
              "com.econtechnologies.chronosync",
            ],
            pkgutil: "com.econtechnologies.pkg.ChronoSyncApplication"

  zap trash: [
    "~/Library/Logs/ChronoSync",
    "~/Library/Preferences/com.econtechnologies.backgrounder.chronosync.plist",
    "~/Library/Preferences/com.econtechnologies.chronosync.plist",
    "~/Library/Saved Application State/com.econtechnologies.chronosync.savedState",
  ]
end
