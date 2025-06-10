cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.2.3"
  sha256 arm:   "13df90ba4470d2f79d925a705fe2977a8a6c2c5cf721ed619af4faaf037096f0",
         intel: "092687ad115c863111a5f2e326f9f1d65de3014958ba35be195dd3929b6be1dd"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
