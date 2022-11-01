cask "gretl" do
  version "2022c"
  sha256 "54b34b2b51eda30b5eb7932ff25f641a1fd9a884bd25e40e60d8c6bb2fff9db1"

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
