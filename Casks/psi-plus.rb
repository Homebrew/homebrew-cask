cask "psi-plus" do
  version "1.4.1472-macOS10.13"
  sha256 "8e5b44446a013ef36b7f02f2609ecece953cc93db61e8a05206b69afe415b49f"

  # downloads.sourceforge.net/psiplus/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/psiplus/Psi+-#{version}-x86_64.dmg"
  appcast "https://sourceforge.net/projects/psiplus/rss?path=/macOS/tehnick"
  name "Psi+"
  homepage "https://psi-plus.com/"

  depends_on macos: ">= :sierra"

  app "Psi+.app"

  uninstall quit: "com.psi-plus"

  zap trash: [
    "~/Library/Saved Application State/com.psi-plus.savedState",
    "~/Library/Caches/Psi+",
    "~/Library/Application Support/Psi+",
  ]
end
