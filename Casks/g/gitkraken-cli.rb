cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.6.0"
  sha256 arm:   "eaa510e623a248535a800891fb01b731236d99b5835a4c2ffc74c5999e20e928",
         intel: "a5924468a3052a6f4cfa90fff5c0599fd3582a1bd6555a8c57feb34e2442124b"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
