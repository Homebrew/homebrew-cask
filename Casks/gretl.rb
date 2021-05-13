cask "gretl" do
  version "2021b"
  sha256 "13091151f21969255ba26a414cfed286f2fa1b6ba4b106fefd516a752d451c14"

  url "https://downloads.sourceforge.net/project/gretl/gretl/#{version}/gretl-#{version}-macos-intel.pkg",
      verified: "downloads.sourceforge.net/gretl/"
  name "gretl"
  homepage "https://gretl.sourceforge.io/"

  livecheck do
    url "http://gretl.sourceforge.net/osx.html"
    strategy :page_match
    regex(/gretl-(\d+\w)-macos-intel\.pkg/i)
  end

  pkg "gretl-#{version}-macos-intel.pkg"

  uninstall pkgutil: "net.sourceforge.gretl.base.pkg"
end
