cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.0.4"
  sha256 arm:   "da780a05136658576185ebdca8814a6e90fa8b7764e6d22a43a5237185d82aa2",
         intel: "4ee6d200a052cbdf00cf005eb0fd348f1b026a82fe26bbb2a37556b3d9eb33b0"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk_#{version}_#{arch}/gk"

  zap trash: "~/.gitkraken"
end
