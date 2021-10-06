cask "securesafe" do
  version "2.12.0"
  sha256 "87e64f2f10e58173c239267cfbe7c4975eb5598b33eb6ce7441e8ae2323b0aa6"

  url "https://www.securesafe.com/userdata/downloads/securesafe-#{version}.pkg"
  name "SecureSafe"
  desc "Highly secure online storage with password manager"
  homepage "https://www.securesafe.com/"

  livecheck do
    url "https://www.securesafe.com/en/downloads"
    strategy :page_match
    regex(/securesafe-(\d+(?:\.\d+)*)\.pkg/i)
  end

  depends_on macos: ">= :mojave"

  pkg "securesafe-#{version}.pkg"

  uninstall pkgutil: [
    "com.dswiss.securesafe.pkg.sync",
    "io.macfuse.installer.components.core",
  ]
end
