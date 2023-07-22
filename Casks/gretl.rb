cask "gretl" do
  version "2023b"
  sha256 "307c0d6ae748c80f9a64f12c827523b6fd7ac32265cb94594afc8a5f45d71cda"

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
