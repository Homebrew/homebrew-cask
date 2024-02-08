cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.5.1"
  sha256 arm:   "0d2191829d02bd435a48d16ef4e28408457aed1b56d10b6bffd88d79ed7a02d6",
         intel: "af59717e612fd120918b602f13f2c96cea4345c254a81c3e98dc0d7c0f5a9d77"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
