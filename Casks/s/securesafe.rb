cask "securesafe" do
  version "2.24.1"
  sha256 "613b2a0fc2bdfe45a7f82fd1946d991314c72d7c1de3cd4da74d30f884dcda52"

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
