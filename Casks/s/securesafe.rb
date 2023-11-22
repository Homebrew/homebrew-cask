cask "securesafe" do
  version "2.20.2"
  sha256 "7c6c9a596c33abd3bdf252387b2600378021fc0dd8e0d425dda15df5fb524fbf"

  url "https://app.securesafe.com/app/download/securesafe-#{version}.pkg"
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
