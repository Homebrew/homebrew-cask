cask "cernbox" do
  version "2.10.1.7479"
  sha256 "eee944815b4513b4940d80fedaf09a798af7769cc11e1757b278d5f89c2d344a"

  url "https://cernbox.cern.ch/cernbox/doc/MacOSX/cernbox-#{version}.pkg"
  name "CERNBox Client"
  desc "Cloud storage for CERN users"
  homepage "https://cernbox.web.cern.ch/cernbox/"

  livecheck do
    url "https://cernbox.web.cern.ch/cernbox/downloads/"
    regex(%r{href=.*?/cernbox[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  pkg "cernbox-#{version}.pkg"

  uninstall signal:     [["TERM", "ch.cern.cernbox"]],
            login_item: "cernbox",
            pkgutil:    "ch.cern.cernbox"
end
