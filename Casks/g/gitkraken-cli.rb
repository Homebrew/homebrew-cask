cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.20"
  sha256 arm:   "fc6cc21e2f779b48e68f4c0e8d120dff40b9534ed51a0e884d22cfadab1abfdd",
         intel: "e793253408346ca2f1b97413e3cb290645baf365f7a286c2741ea1419d26ae7e"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
