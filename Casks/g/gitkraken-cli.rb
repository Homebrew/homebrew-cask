cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.52"
  sha256 arm:          "e55b59f6847dade655263ce017bcadab0ac5f4bebb80b2bc34e235732f0e7853",
         intel:        "e34a47e90e18518914ed0cd46f59edfd38f6619b93e78bdb476b1192dbed127a",
         arm64_linux:  "8fea107eb2f5824865bdd2e1ebf76a00e3453d52872ce9e54fd602833aaa8b38",
         x86_64_linux: "30893824e78f5d2ed290579d458acc1f27d5d329ce3f7257dcab7c593692d279"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
