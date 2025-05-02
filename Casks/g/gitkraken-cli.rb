cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.0.5"
  sha256 arm:   "cf8f4b648e617060ada7276058098134de589c54a83cdad0b0fff14324ac6b17",
         intel: "fd25f7f77b77d3087db8fdca4b855c5ac955830567997bf3735f595f5fc02129"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk_#{version}_#{arch}/gk"

  zap trash: "~/.gitkraken"
end
