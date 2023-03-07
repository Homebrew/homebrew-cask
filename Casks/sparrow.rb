cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.3"
  sha256 arm:   "a679507771867edc51f608eacb606a32e63034937c22dd445a1caa634178ddda",
         intel: "e84dfe28938a5e35390407a1006010a4d92393a6f5103939e1765d39407a27c8"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
