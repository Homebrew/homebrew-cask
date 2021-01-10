cask "cernbox" do
  version "2.7.1.2596"
  sha256 "a85533f2e40fa6a408d7b97b1f41b42ff2fc3c4a7af404972823ebe54bca6354"

  url "https://cernbox.cern.ch/cernbox/doc/MacOSX/cernbox-#{version}.pkg"
  name "CERNBox Client"
  desc "Cloud storage for CERN users"
  homepage "https://cernbox.web.cern.ch/cernbox/"

  livecheck do
    url "https://cernbox.web.cern.ch/cernbox/downloads/"
    strategy :page_match
    regex(%r{href=.*?/cernbox-(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "cernbox-#{version}.pkg"

  uninstall signal:     [["TERM", "ch.cern.cernbox"]],
            login_item: "cernbox",
            pkgutil:    "ch.cern.cernbox"
end
