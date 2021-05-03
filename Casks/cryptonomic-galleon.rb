cask "cryptonomic-galleon" do
    version "1.1.20b"
    sha256 "51896518f06ba333a47cc7e4f0e849a9b5e098e0da63fb7e467557f4eaebd387"
  
    url "https://cryptonomic-wallet.nyc3.digitaloceanspaces.com/release_#{version}/Galleon-#{version.delete_suffix('b')}.dmg",
        verified: "cryptonomic-wallet.nyc3.digitaloceanspaces.com"
    name "Galleon"
    desc "A software wallet for the Tezos blockchain"
    homepage "https://cryptonomic.tech/galleon.html"
  
    app "Galleon.app"
  
    zap trash: "~/.shuttle.json"
  end