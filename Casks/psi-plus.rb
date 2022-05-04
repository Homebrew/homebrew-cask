cask "psi-plus" do
  version "1.5.1619"
  sha256 "0f0a4b515b832dbfb6c58c65eaf9084487d4188e7704fa84aeac9776f8edfe75"

  url "https://downloads.sourceforge.net/psiplus/Psi+-#{version}-macOS10.15-x86_64.dmg",
      verified: "downloads.sourceforge.net/psiplus/"
  name "Psi+"
  desc "XMPP client designed for experienced users"
  homepage "https://psi-plus.com/"

  livecheck do
    url "https://sourceforge.net/projects/psiplus/files/macOS/tehnick/"
    regex(/Psi%2B[._-]?(\d+(?:\.\d+)*)[._-]?macOS.*-x86_64\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "Psi+.app"

  uninstall quit: "com.psi-plus"

  zap trash: [
    "~/Library/Application Support/Psi+",
    "~/Library/Caches/Psi+",
    "~/Library/Saved Application State/com.psi-plus.savedState",
  ]
end
