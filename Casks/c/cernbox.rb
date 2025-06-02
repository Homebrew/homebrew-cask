cask "cernbox" do
  arch arm: "arm64", intel: "x86_64"

  version "5.3.2.15486"
  sha256 arm:   "d421a2e07f546bac998c64f2f93db8ed8ee0c17125c538a77a9440d46f080195",
         intel: "12c8ba2c90bdf08a63c7540b7dcc7c048db610745b1e834167237b3068e8c739"

  url "https://cernbox.cern.ch/cernbox/doc/MacOSX/cernbox-#{version}-#{arch}.pkg"
  name "CERNBox Client"
  desc "Cloud storage for CERN users"
  homepage "https://cernbox.web.cern.ch/cernbox/"

  # The download page contains links for both stable and unstable versions.
  # This only uses the first match on the page, which should be the stable
  # version.
  livecheck do
    url "https://cernbox.web.cern.ch/cernbox/downloads/"
    regex(/href=.*?cernbox[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.pkg/i)
    strategy :page_match do |page, regex|
      page[regex, 1]
    end
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
