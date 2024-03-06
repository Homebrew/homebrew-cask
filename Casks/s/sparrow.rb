cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.8.3"
  sha256 arm:   "83af936cc1e25f0c3e2b3cc7c41cb566604a1c7019cf91d944c4419414502a40",
         intel: "5f1eaca64fcacf068af46fc2098ae34e8fcb26a4095965c8014df915c62dafe0"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
