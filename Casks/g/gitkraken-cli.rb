cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.0.10"
  sha256 arm:   "4a210464cb4df0226accc096439ea2b2f6485582fb5f6048274215eb5d24e28b",
         intel: "30c76995986a0579d38b1d8c606a8cb341ccfe2e04c55775bead14f29e51fe49"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
