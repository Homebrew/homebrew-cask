cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.50"
  sha256 arm:          "08bc4ed760d3a0826f855222fff0ec25e7736fccfadde9fbf875a704304d17ce",
         intel:        "47f237e79edbc167e08e0d7d23eb361452f2310ecb9240ca9c1c7dbc28daa331",
         arm64_linux:  "7728048e9cc7cf6902b2e06aa20b58a46dd6e60cdc8dc5461bdc05b495de0750",
         x86_64_linux: "e3b490b8b3df6ef80cefe7b86ea4703f55a8fc3334f2491a8f7b73181235c3c1"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
