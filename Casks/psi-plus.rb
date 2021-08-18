cask "psi-plus" do
  version "1.5.1519"
  sha256 "f3d0bb42046d6ad3a2b2e181318ea52d82fdb02844c76e11040c76e4e12f55e0"

  url "https://downloads.sourceforge.net/psiplus/Psi+-#{version}-macOS10.14-x86_64.dmg",
      verified: "downloads.sourceforge.net/psiplus/"
  appcast "https://sourceforge.net/projects/psiplus/rss?path=/macOS/tehnick"
  name "Psi+"
  desc "XMPP client designed for experienced users"
  homepage "https://psi-plus.com/"

  depends_on macos: ">= :sierra"

  app "Psi+.app"

  uninstall quit: "com.psi-plus"

  zap trash: [
    "~/Library/Application Support/Psi+",
    "~/Library/Caches/Psi+",
    "~/Library/Saved Application State/com.psi-plus.savedState",
  ]
end
