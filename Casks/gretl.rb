cask "gretl" do
  version "2022a"
  sha256 "d911dbeccfe586c373a3aaf6d79d65ea931f1d48d27a02398c587f44b36c756a"

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
