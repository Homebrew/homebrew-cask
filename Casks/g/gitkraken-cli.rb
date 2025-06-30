cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.1"
  sha256 arm:   "ad036828f33dcd0c7802206d8aa0e6c22d143c663b963b06bd9413fd923327cd",
         intel: "7f2c087c999d486fde643c7f46dd01c5b4d058842a6671c3e42fa24a9d3b2a30"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk_#{version}_#{arch}/gk"

  zap trash: "~/.gitkraken"
end
