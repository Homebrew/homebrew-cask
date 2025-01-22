cask "cernbox" do
  arch arm: "arm64", intel: "x86_64"

  version "5.3.1.14387"
  sha256 arm:   "027da01a323f0d897658127aa06ef98bcab06e7f4b3234f0cc15868bc9dc76fe",
         intel: "f16c2b102000e6ec1f077a74b09c7b8bae970bc04c3c7b208df8d58c2b73d540"

  url "https://cernbox.cern.ch/cernbox/doc/MacOSX/cernbox-#{version}-#{arch}.pkg"
  name "CERNBox Client"
  desc "Cloud storage for CERN users"
  homepage "https://cernbox.web.cern.ch/cernbox/"

  livecheck do
    url "https://cernbox.web.cern.ch/cernbox/downloads/"
    regex(/href=.*?cernbox[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.pkg/i)
  end

  pkg "cernbox-#{version}-#{arch}.pkg"

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
end
