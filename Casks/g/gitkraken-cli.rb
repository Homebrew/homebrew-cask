cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.5"
  sha256 arm:   "85c54e8845e9a54ee98732bcd63a0019f4fc67646ba67d7a4a277c44ce706093",
         intel: "5d785d6a434c5d7d44d5572a11690900146a447531c1f0ac8912dc8c27a17f31"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk_#{version}_#{arch}/gk"

  zap trash: "~/.gitkraken"
end
