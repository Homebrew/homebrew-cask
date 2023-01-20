cask "securesafe" do
  version "2.18.0"
  sha256 "3c24ace07aaf34f49615a1e7698fdc73151d5e9294af70135207edd8085e7776"

  url "https://www.securesafe.com/userdata/downloads/securesafe-#{version}.pkg"
  name "SecureSafe"
  desc "Highly secure online storage with password manager"
  homepage "https://www.securesafe.com/"

  livecheck do
    url "https://www.securesafe.com/en/downloads"
    regex(/securesafe-(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: ">= :mojave"

  pkg "securesafe-#{version}.pkg"

  uninstall pkgutil: [
    "com.dswiss.securesafe.pkg.sync",
    "io.macfuse.installer.components.core",
  ]
end
