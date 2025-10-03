cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.40"
  sha256 arm:   "929dc5fa93ab9c3a9ddaa95ae97452336f243c3304bf0ed20a6fe997356fad12",
         intel: "e872056ab4daa7fb20c461460af5e1ff1ea23aed9f2e94afc5e7194d17605aad"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
