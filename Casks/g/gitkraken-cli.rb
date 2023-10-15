cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.1.0"
  sha256 arm:   "372d6408fb0abcef33a3d70cc39e6b4710418e9e27249b9d48ec90621b049fe0",
         intel: "b454d7433bfdbb2dbc0d6dfd838d321c8d19e9a45bfaba2de80ceb857d7f2a91"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
