cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.2.0"
  sha256 arm:   "ba0fd45ef438586bbe1784bcaa9fedeec442c11aa952477a953e10f7f5700ceb",
         intel: "a2f5893e7c709ea06754b0ded2878ea50796194be069f3ee4ebed739f5ab9251"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
