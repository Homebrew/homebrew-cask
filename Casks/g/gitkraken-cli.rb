cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.0.8"
  sha256 arm:   "0ecc361540ab4647b2c77cf51bb1765bd16f7d9ec6f0663231d893b365812626",
         intel: "7781fe4a14577ad8074256f01462aab5601afedd0f87d01e7f62174251dd9ae3"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk_#{version}_#{arch}/gk"

  zap trash: "~/.gitkraken"
end
