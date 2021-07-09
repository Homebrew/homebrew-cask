cask "cryptonomic-galleon" do
  version "1.1.21b"
  sha256 "8f270e4cd191f94491fba176bb89932cbe9951c9f9e0ef5a234a2b90c9b265d3"

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
