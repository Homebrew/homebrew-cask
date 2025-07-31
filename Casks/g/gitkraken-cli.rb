cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.9"
  sha256 arm:   "6942d543d698bbf2dd0ec6f7905c6f6432e0e10dda0cb07ec7cc4149c316b999",
         intel: "6244e0997409ab1c7411b0b0b0fcd705396312d789fe3dcecabacdfce1d0cafd"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
