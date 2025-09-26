cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.37"
  sha256 arm:   "c2f12005c74dbdc0e775666efa383d2417da0f2efeabf425c4c92bccf8b52466",
         intel: "8fedd7ed2ef2c413d8e27b9859261b567f91372ef82b2ebee9bc0fdff307b977"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
