cask "cryptonomic-galleon" do
  version "1.1.24b"
  sha256 "07ea7f1c3c38eaf21e575aa087ffe017c358636f644bb8eabee97d63ece6f6da"

  url "https://cryptonomic-wallet.nyc3.digitaloceanspaces.com/release_#{version}/Galleon-#{version.delete_suffix("b")}.dmg",
      verified: "cryptonomic-wallet.nyc3.digitaloceanspaces.com"
  name "Galleon"
  desc "Software wallet for the Tezos blockchain"
  homepage "https://cryptonomic.tech/galleon.html"

  livecheck do
    url "https://github.com/Cryptonomic/Deployments/wiki/Galleon%3A-Releases"
    strategy :page_match
    regex(/Galleon\s*(\d+(?:\.\d+)*\w)/i)
  end

  app "Galleon.app"

  zap trash: [
    "~/Library/Application Support/Galleon",
    "~/Library/Preferences/tech.galleon-wallet.galleon.plist",
    "~/Library/Saved Application State/tech.galleon-wallet.galleon.savedState",
  ]
end
