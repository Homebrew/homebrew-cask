cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.39"
  sha256 arm:   "6fab12bdb370eec17e59b3a98fbb05264274871575f849b1d1842e666afc998a",
         intel: "0b979ce79dde520373c61a2ac9849fd96158ce6abc43f758ab361e88ce2d717c"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
