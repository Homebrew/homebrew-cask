cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "2.0.0"
  sha256 arm:   "36be7a2e111b7ac961527fceee0857c20bb7844f7b9f4f35e2a7518a82d53840",
         intel: "719f87bca4448ae5dfdcd61723b6c1a5f6b0f1472a53032cc5e71f9248cdb502"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
