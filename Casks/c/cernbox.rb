cask "cernbox" do
  arch arm: "arm64", intel: "x86_64"

  version "5.2.1.13464"
  sha256 arm:   "9d41958720d3c796ce265a71820975aa208de006f7115c9d67d040b0a2349517",
         intel: "aa1d3e29201167f519a7c121ff8882430f7982ca44a9c18909624badea9259f0"

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
