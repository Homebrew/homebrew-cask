cask "securesafe" do
  version "2.11.0"
  sha256 "9ba4ab371485ea493ca5faf511132fe3d2aab04c3802a109e31684b1947482db"

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
    "io.macfuse.installer.components.core",
  ]
end
