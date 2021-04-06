cask "securesafe" do
  version "2.9.2"
  sha256 "f15988c0048d47f6c6434f2a0d84f04addb88c0ee734cab03b74e2060b1915d0"

  url "https://www.dswiss.com/userdata/downloads/securesafe-#{version}.pkg",
      verified: "dswiss.com/userdata/downloads/"
  name "SecureSafe"
  desc "Highly secure online storage with password manager"
  homepage "https://www.securesafe.com/"

  livecheck do
    url "https://www.securesafe.com/en/downloads"
    strategy :page_match
    regex(/securesafe-(\d+(?:\.\d+)*)\.pkg/i)
  end

  depends_on macos: ">= :sierra"

  pkg "securesafe-#{version}.pkg"

  uninstall pkgutil: [
    "com.dswiss.securesafe.pkg.sync",
    "com.github.osxfuse.pkg.Core",
  ]
end
