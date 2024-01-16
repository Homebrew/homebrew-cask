cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.4.1"
  sha256 arm:   "944f2c1cc52347b1907c53b03caf9aa296e03a8d07fe0de81ebc22edfca8c292",
         intel: "50a5afcb66f86f077fa8ff5f3d272f12c326933a3da9fec0a9e65b9dc7209fda"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
