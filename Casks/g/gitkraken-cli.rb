cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.4"
  sha256 arm:   "67afe655bd0e14ede370c14b0ceb325e76159b2334dde28d08630d5a9b793051",
         intel: "e6167725f2fdf01bdd50d38efd27157a4cdfdb20c3b9d72f6673d4e621c3dfcb"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk_#{version}_#{arch}/gk"

  zap trash: "~/.gitkraken"
end
