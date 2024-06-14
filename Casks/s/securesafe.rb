cask "securesafe" do
  version "2.22.1"
  sha256 "65763179bc5c89bb6cc8c8597cf54806e7b21f946eed0fd81eee955dc5c02930"

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
