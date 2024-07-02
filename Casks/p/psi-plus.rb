cask "psi-plus" do
  version "1.5.1639"
  sha256 "e73774fe112f08c28b61c917a7f01e40195bf8f8c9720487cb9abfbf9e84eb38"

  url "https://downloads.sourceforge.net/psiplus/Psi+-#{version}-macOS10.15-x86_64.dmg",
      verified: "downloads.sourceforge.net/psiplus/"
  name "Psi+"
  desc "XMPP client designed for experienced users"
  homepage "https://psi-plus.com/"

  livecheck do
    url "https://sourceforge.net/projects/psiplus/files/macOS/tehnick/"
    regex(/Psi%2B[._-]?(\d+(?:\.\d+)+)[._-]?macOS.*-x86_64\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Psi+.app"

  uninstall quit: "com.psi-plus"

  zap trash: [
    "~/Library/Application Support/Psi+",
    "~/Library/Caches/Psi+",
    "~/Library/Saved Application State/com.psi-plus.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
