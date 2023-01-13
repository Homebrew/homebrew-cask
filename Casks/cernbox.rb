cask "cernbox" do
  version "2.11.1.8905"
  sha256 "09a8134e800a42dcd2279218c2598bc7a8b01e19843fe4d3622cbbb9eb0b2d53"

  url "https://cernbox.cern.ch/cernbox/doc/MacOSX/cernbox-#{version}.pkg"
  name "CERNBox Client"
  desc "Cloud storage for CERN users"
  homepage "https://cernbox.web.cern.ch/cernbox/"

  livecheck do
    url "https://cernbox.web.cern.ch/cernbox/downloads/"
    regex(%r{href=.*?/cernbox[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  pkg "cernbox-#{version}.pkg"

  uninstall signal:     ["TERM", "ch.cern.cernbox"],
            login_item: "cernbox",
            pkgutil:    "ch.cern.cernbox"
end
