cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.8.2"
  sha256 arm:   "541b82e83ec928e7b54490211fa5e9d3b315394d895aebeab9a9696ce24c378d",
         intel: "508a5ba212c2393a9d4cd122c2a8aa8b16e593c640bc3e4ac111ee574b2fd82d"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
