cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.0.7"
  sha256 arm:   "642f912e8590d587c795ff28effdf91a6f16c03e87f58d78c7ec13f9bef94b9f",
         intel: "fae3b71c68c56bdf0ca7d605bf2f0943c9da01b0dd5f20d1597bf6fbe96973e7"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk_#{version}_#{arch}/gk"

  zap trash: "~/.gitkraken"
end
