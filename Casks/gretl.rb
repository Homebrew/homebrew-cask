cask "gretl" do
  version "2023a"
  sha256 "e99a6aaef3a422c60108aae01695114f1c9616df3a3ea13f8a3ba7b89cbedf69"

  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-macos-intel.pkg",
      verified: "downloads.sourceforge.net/gretl/"
  name "gretl"
  desc "Software package for econometric analysis"
  homepage "https://gretl.sourceforge.io/"

  livecheck do
    url "https://gretl.sourceforge.net/osx.html"
    regex(/gretl[._-]v?(\d+\w)[._-]macos[._-]intel\.pkg/i)
    strategy :page_match
  end

  pkg "gretl-#{version}-macos-intel.pkg"

  uninstall pkgutil: "net.sourceforge.gretl.base.pkg"
end
