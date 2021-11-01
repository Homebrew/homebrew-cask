cask "gretl" do
  version "2021d"
  sha256 "958558fe2a90aa3c60f944066894be42836663d0805aa73b62806c886327621c"

  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-macos-intel.pkg",
      verified: "downloads.sourceforge.net/gretl/"
  name "gretl"
  desc "Software package for econometric analysis"
  homepage "https://gretl.sourceforge.io/"

  livecheck do
    url "http://gretl.sourceforge.net/osx.html"
    strategy :page_match
    regex(/gretl-(\d+\w)-macos-intel\.pkg/i)
  end

  pkg "gretl-#{version}-macos-intel.pkg"

  uninstall pkgutil: "net.sourceforge.gretl.base.pkg"
end
