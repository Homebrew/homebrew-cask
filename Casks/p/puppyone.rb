cask "puppyone" do
  arch arm: "arm64"

  version "0.3.9"
  sha256 "fc5617e07268934a7fa68729552ecc73d7b269cc3eaaada057b2f39855923eb4"

  url "https://downloads.puppyone.ai/desktop/stable/mac/v#{version}/puppyone-#{version}-#{arch}.dmg"
  name "PuppyOne"
  desc "Local-first workspace where you and your AI work on the same files"
  homepage "https://www.puppyone.ai/"

  depends_on arch: :arm64

  app "PuppyOne.app"
end
