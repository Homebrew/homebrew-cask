cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.0.7"
  sha256 arm:   "1dcd401d1a19b23d69253d3a3eb3e49dc874fc00e10c2afe422598ed51f2d469",
         intel: "95c42b71a3c0498051e07347baaed067794868f8f1b2f756474598a3fa087991"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
