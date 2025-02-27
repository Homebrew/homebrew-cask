cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.1.3"
  sha256 arm:   "1836037fdadc9a5faf756628ac723ac10dfddf1c5ccdb6d724b26f7cddbe59c8",
         intel: "0682aee99eb077cf00b798ae741251652009f311dd940f132cb20697770dcafe"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
