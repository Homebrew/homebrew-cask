cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.0.6"
  sha256 arm:   "2c9d8b920b781321cf4d40db502f1b8049a2074e41ba9fa8c2755ee31927e052",
         intel: "7ac2488301ce2b294aaba9a1bc128da52dbe18eca06803351a078c0b12fa5f0e"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
