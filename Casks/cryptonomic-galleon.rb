cask "cryptonomic-galleon" do
  version "1.3.2b"
  sha256 "086fe42829b4bc0f3acad05e15d2cc1819bc9abadaf183369e436bfd02cac5a8"

  url "https://cryptonomic-wallet.nyc3.digitaloceanspaces.com/release_#{version}/Galleon-#{version.delete_suffix("b")}.dmg",
      verified: "cryptonomic-wallet.nyc3.digitaloceanspaces.com"
  name "Galleon"
  desc "Software wallet for the Tezos blockchain"
  homepage "https://cryptonomic.tech/galleon.html"

  livecheck do
    url "https://github.com/Cryptonomic/Deployments/wiki/Galleon%3A-Releases"
    strategy :page_match
    regex(/Galleon\s*(\d+(?:\.\d+)+\w)/i)
  end

  app "Galleon.app"

  zap trash: [
    "~/Library/Application Support/Galleon",
    "~/Library/Preferences/tech.galleon-wallet.galleon.plist",
    "~/Library/Saved Application State/tech.galleon-wallet.galleon.savedState",
  ]
end
