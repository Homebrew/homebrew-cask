cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.0.2"
  sha256 arm:   "d8da27302f64d358426086de3ab3a469cd79cc96d5d9e674449d1892aee8dac6",
         intel: "4d2f8c664a476069c2a41ed8475a7ee979d9099c07b5473b6d264cf41e314224"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk_#{version}_#{arch}/gk"

  zap trash: "~/.gitkraken"
end
