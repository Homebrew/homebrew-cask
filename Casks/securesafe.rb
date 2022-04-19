cask "securesafe" do
  version "2.15.0"
  sha256 "4643fbc59193e00771423e4c84ab1de77ad34dd9b0f0fee82d29500fa1ede61b"

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
