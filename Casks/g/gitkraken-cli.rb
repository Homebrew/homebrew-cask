cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.54"
  sha256 arm:          "73043402e0131653b843923bab21443007bef7608f88bbebf2e17da7d31105d8",
         intel:        "1e1f2893aaef0b6035654a4155ec0a4ba98421763a0a15d083460199fedba412",
         arm64_linux:  "acc3da676858bc30b7eb72b8d47b50083d84e357f534f7479ac52cef195d550e",
         x86_64_linux: "a6b8c3485b22175b3c7637f4707a9c22aa0beb57ccce4e776477ac23f28cb55b"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
