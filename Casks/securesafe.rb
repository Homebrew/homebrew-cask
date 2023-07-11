cask "securesafe" do
  version "2.19.1"
  sha256 "d856f5a707a53d39deacddf2122ac6a55eb16a41439b6a9b32a3717efbfb8f51"

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

  zap trash: [
    "~/Library/Caches/DSwiss/securesafe",
    "~/Library/Preferences/com.dswiss.securesafe.*",
    "~/Library/Saved Application State/com.dswiss.securesafe.sync.savedState",
  ]
end
