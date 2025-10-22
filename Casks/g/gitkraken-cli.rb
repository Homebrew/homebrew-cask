cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.45"
  sha256 arm:   "8fc66775d8b78d41bb2f70814fc15647095fbc21d99730ab0c89c418df39958a",
         intel: "318750ee71bf7af8ddf6522837a3e4921b223b933db2301e59630aed95ead227"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
