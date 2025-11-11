cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.45"
  sha256 arm:          "8fc66775d8b78d41bb2f70814fc15647095fbc21d99730ab0c89c418df39958a",
         intel:        "318750ee71bf7af8ddf6522837a3e4921b223b933db2301e59630aed95ead227",
         arm64_linux:  "e7fbebf88b4cd1e9f555bdbb3fdca0239d1460ac7750d1d2f777c3ab885eb26e",
         x86_64_linux: "0e12a0c99ce63f836db1fcd901c3fe66c21b7824d7a39eb3f2f317e4c159b827"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
