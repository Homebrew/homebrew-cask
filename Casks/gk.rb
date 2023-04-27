cask "gk" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.0.2"
  sha256 arm:   "8f6075059aa684fc261442d26a8ef71eec1682756b8b41e5b842c0bc55f16453",
         intel: "5f66b5118075282a5ec38455e1f8ac66d6fb6c0de4168e818cefd52ba45d3b9d"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "GitKraken on the command-line"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  uninstall
end
