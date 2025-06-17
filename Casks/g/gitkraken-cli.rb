cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.0.9"
  sha256 arm:   "08a1e0e9b2f5421d865d41bbc78558f3f18299e529960f426b8bda64d1c558ac",
         intel: "c0c66dd9852c85d7e9cba04338ec6b4f64f42079e7525e4a5eb58be391440152"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk_#{version}_#{arch}/gk"

  zap trash: "~/.gitkraken"
end
