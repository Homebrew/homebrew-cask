cask "gretl" do
  version "2022b"
  sha256 "9ad558d0881194c96664615c9561b5198ddb48db888dfdefda3e4c068f1f3c1a"

  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-macos-intel.pkg",
      verified: "downloads.sourceforge.net/gretl/"
  name "gretl"
  desc "Software package for econometric analysis"
  homepage "https://gretl.sourceforge.io/"

  livecheck do
    url "http://gretl.sourceforge.net/osx.html"
    strategy :page_match
    regex(/gretl[._-]v?(\d+\w)[._-]macos[._-]intel\.pkg/i)
  end

  pkg "gretl-#{version}-macos-intel.pkg"

  uninstall pkgutil: "net.sourceforge.gretl.base.pkg"
end
