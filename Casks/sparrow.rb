cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.6"
  sha256 arm:   "83946a39304b4166c91094c510438579d2527a51d22d94e8cb9c8bd192a0846e",
         intel: "ab43a01cfbb8995fa665479df35cb1660cedc7e758710dd6ff043b1219d711be"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
