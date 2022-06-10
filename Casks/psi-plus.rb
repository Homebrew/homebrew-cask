cask "psi-plus" do
  version "1.5.1629"
  sha256 "63fc84c6b9bbcf7eb503de4874e3c9262a3dd52d2dcc5266eb08f74b7721e3a6"

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
end
