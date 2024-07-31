cask "securesafe" do
  version "2.23.0"
  sha256 "eda8392c5bb4fb07e0ba9983bc8398aa7b1630bf816895da0d2d90cbb9ee5972"

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
