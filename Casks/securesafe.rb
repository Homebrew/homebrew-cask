cask "securesafe" do
  version "2.8.0"
  sha256 "1e193ae806896b304fc4ce4c62e1bb3b0c3db07650924f94b7baed7803f5e372"

  # dswiss.com/userdata/downloads was verified as official when first introduced to the cask
  url "https://www.dswiss.com/userdata/downloads/securesafe-#{version}.pkg"
  appcast "https://www.securesafe.com/en/downloads/"
  name "SecureSafe"
  desc "Secure online storage"
  homepage "https://www.securesafe.com/"

  depends_on macos: ">= :sierra"

  pkg "SecureSafe-#{version}.pkg"

  uninstall pkgutil: [
    "com.dswiss.securesafe.pkg.sync",
    "com.github.osxfuse.pkg.Core",
  ]
end
