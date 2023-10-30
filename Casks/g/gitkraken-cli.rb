cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.1.3"
  sha256 arm:   "b4bfeae631e3098d0eb4af2f5ab5e1512ab5cacd41a462b334cadbbf90a38a4c",
         intel: "0300a43494be062c507ef754d5c3b781cef914d9f3413c1de763749df5cb5880"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
