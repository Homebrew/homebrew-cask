cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.0.5"
  sha256 arm:   "9071a763b143648c7c410b86bba937e7ce503b7a9fcef2860f0c0e2d9563b975",
         intel: "b88526570f4b2b59e30a0b2fb7bd407eca25dd101b35cf902c48f01a9118124c"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
