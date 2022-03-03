cask "sparrow" do
  version "1.6.0"
  sha256 "a89789a50a24c62b6e00e28c4fe5d4684a29f981c379288cb7fdfeba87adf8dd"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
