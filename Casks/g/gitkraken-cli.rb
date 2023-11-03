cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.1.4"
  sha256 arm:   "225173e85dac0113cec42f613e8f7f13e39d99068d4bcc116fb31ee28233857d",
         intel: "c937ac62bf66bd9f19946dcd356f5b22638766d285699fa57364374b798ffce4"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
