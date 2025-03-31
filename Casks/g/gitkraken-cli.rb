cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.0.1"
  sha256 arm:   "ef0a9f91f6629ea8511862e83ac2a0bf4689699e358f21843941c81326539438",
         intel: "cf3df384f1d6875a5bbe599bd3367b9ce07e26b2053e92605b306afdaa63b1f2"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk_#{version}_#{arch}/gk"

  zap trash: "~/.gitkraken"
end
