cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.41"
  sha256 arm:   "181c5c626da224c758898c00169a036a7ea3f2d53bd24ea6e5e85a0a9277690d",
         intel: "8262236d6877c8abfb6bb0fc0ea63de9f7413125b6e4fd44ae4230aaca007cfd"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
