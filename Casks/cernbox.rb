cask "cernbox" do
  version "2.7.6.3357"
  sha256 "8a5c3fef87eae438657dffba44d5a34a74da24bed5d2eea02e6dd06387704e20"

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
