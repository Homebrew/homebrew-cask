cask "securesafe" do
  version "2.15.1"
  sha256 "ada38c20464d125339417fa6849f4600f3ea86c1eac494d452c96682675aaeab"

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
