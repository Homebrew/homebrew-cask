cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.3"
  sha256 arm:   "37aae31f8bacbb7c3a8ac69db12f593725089f9a742194ca57aa6db8142d2122",
         intel: "998f52ba07799306036a19da6f6f051aa9827cb173889f5b862e4ed82ea08fa6"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk_#{version}_#{arch}/gk"

  zap trash: "~/.gitkraken"
end
