cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.0.8"
  sha256 arm:   "a2a1d4c52c1f9f142150a18b9791ca0bb754b09bfb74db1c5f9604b0c2051bf4",
         intel: "fc68a497eb4512f2f80b071adbcaa41f45f9b0641f661da1d981303ac0f33b60"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk_#{version}_#{arch}/gk"

  zap trash: "~/.gitkraken"
end
