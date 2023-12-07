cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.2.2"
  sha256 arm:   "682e042d2d1592ca91218f9afed73d46c6866191502d1c040c725091b52f40b8",
         intel: "550a11e1989e1d643359d083e20a41b865f4befa7aa79cf39f1f14cf540e2841"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"
end
