cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.32"
  sha256 arm:   "447bc3b06bce7ceeda87f883c2bea6fe07dc9d7a7bcebdeee3cfb55c4c1f7f11",
         intel: "76409aebc15b78c7d06cdc362b588957df3a6cec220db36fac8df90ec05577c2"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
