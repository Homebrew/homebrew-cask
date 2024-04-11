cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.8.5"
  sha256 arm:   "f4f9d9cf2982649a6d7d1030e8db389f5f2a898a576e4f965f0859d1f0047c9c",
         intel: "cef6963b5fdb52c8fd724ee1f1fd7a64729c92ed202f359b79a71f8f788079ed"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
