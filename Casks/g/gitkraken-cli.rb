cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.14"
  sha256 arm:   "04c7dd02471b01b16e826b251bd37af6c2cfe9f3a49076ae22a216b3bc99eaa7",
         intel: "b869447eddd524e5ac189467a544bce4c2796b55e98bf0d5a65baf28e1ebc5aa"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
