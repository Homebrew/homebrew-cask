cask "psi" do
  version "1.4"
  sha256 "e6955acc3d9c7b835b29e1b13918abde6a4bf4748524847885cf896bc0972c8a"

  url "https://downloads.sourceforge.net/psi/psi-#{version}-mac.dmg",
      verified: "sourceforge.net/psi/"
  appcast "https://sourceforge.net/projects/psi/rss?path=/Psi"
  name "Psi"
  homepage "https://psi-im.org/"

  app "Psi.app"

  uninstall quit: "org.psi-im"

  zap trash: [
    "~/Library/Saved Application State/org.psi-im.savedState",
    "~/Library/Caches/Psi",
    "~/Library/Application Support/Psi",
  ]
end
