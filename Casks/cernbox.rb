cask "cernbox" do
  version "2.5.4.2623"
  sha256 "a54a5d7afdd918945da482041f85f4afb1db0bc512829dbe85001abb78fafff1"

  url "https://cernbox.cern.ch/cernbox/doc/MacOSX/cernbox-#{version}.pkg"
  appcast "https://cernbox.web.cern.ch/cernbox/downloads/"
  name "CERNBox Client"
  desc "Cloud storage for CERN users"
  homepage "https://cernbox.web.cern.ch/cernbox/"

  pkg "cernbox-#{version}.pkg"

  uninstall signal:     [["TERM", "ch.cern.cernbox"]],
            login_item: "cernbox",
            pkgutil:    "ch.cern.cernbox"
end
