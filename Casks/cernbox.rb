cask "cernbox" do
  version "2.9.2.6339"
  sha256 "d92630b087da39a50b4a38dc57544bb2eb26d0462b8667a50b40d4ffc01542a1"

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
