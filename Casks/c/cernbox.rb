cask "cernbox" do
  version "4.1.0.11373"
  sha256 "8a54f84f376ad9844cc2251172cf9272418319180b98e424159ae4119499b9e2"

  url "https://cernbox.cern.ch/cernbox/doc/MacOSX/cernbox-#{version}-x86_64.pkg"
  name "CERNBox Client"
  desc "Cloud storage for CERN users"
  homepage "https://cernbox.web.cern.ch/cernbox/"

  livecheck do
    url "https://cernbox.web.cern.ch/cernbox/downloads/"
    regex(%r{href=.*?/cernbox[._-]v?(\d+(?:\.\d+)+)-x86_64.pkg}i)
  end

  pkg "cernbox-#{version}-x86_64.pkg"

  uninstall signal:     ["TERM", "ch.cern.cernbox"],
            login_item: "cernbox",
            pkgutil:    "ch.cern.cernbox"

  zap trash: [
    "~/Library/Application Scripts/ch.cern.cernbox",
    "~/Library/Application Scripts/ch.cern.cernbox.FinderSyncExt",
    "~/Library/Containers/ch.cern.cernbox.FinderSyncExt",
    "~/Library/Group Containers/ch.cern.cernbox",
    "~/Library/HTTPStorages/ch.cern.cernbox",
    "~/Library/LaunchAgents/ch.cern.cernbox.plist",
    "~/Library/Preferences/cernbox",
    "~/Library/Preferences/ch.cern.cernbox.plist",
    "~/Library/Saved Application State/ch.cern.cernbox.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
