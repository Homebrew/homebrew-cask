cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.5.0"
  sha256 arm:   "bfed7b2b73f29c4565781baa0b1bb45d803d61dc7d485aae67c0ad42dc7e4a41",
         intel: "64e87ec6615d2d5a495a4cc7a8a1b27236c6ebb325576ac98fca48e817a2f9fc"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
