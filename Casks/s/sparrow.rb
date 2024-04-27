cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.9.0"
  sha256 arm:   "fc33ff80de0fed12fb76b2f9d8ea9f10420e7edfdf65e589f95bc7fb274c8181",
         intel: "b6a00ba6e09ada16702303e2354069da7cf5c1810afa818f997e904ee4441d9e"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
