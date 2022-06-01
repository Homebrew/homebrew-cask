cask "psi-plus" do
  version "1.5.1627"
  sha256 "b2f534e8276a7132f9f3a33882240169d94114626f6cd5043a99e11618c9610e"

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
