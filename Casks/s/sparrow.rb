cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.8.4"
  sha256 arm:   "76187ef7b52e22a6b45840fd493c7aea6affce42ee6ae6b9399cc99f65e632cb",
         intel: "e13a325b66b722d64c563b06b92ac0559e7b9e7927c46b48ab19df1e99317937"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
