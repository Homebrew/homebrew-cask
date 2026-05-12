cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.62"
  sha256 arm:          "2547fa05e9d5c0a1e58936bae5d33c862f327b9e3d3920e3cba5e6b8c67b4347",
         intel:        "8bd3bfbaa2d1713a0936c0542b13486ebed8cdecf2f0213176e373ff043ee4ed",
         arm64_linux:  "b533fa6d42fc288738bf5e1d7d1528b39e374c5cb6769ccf80ff3d77b247b81e",
         x86_64_linux: "0fdf77697c51adaf7b6a6af3a60f8e735d9015c704c0e339d2237bdca1040033"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
