cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.3.0"
  sha256 arm:   "b1cb0eb829e1f1544017828f958a0a44691c1f044edcbc56677afed0c813832a",
         intel: "7b9aee1aca850492a1d74edc77a32c3fd3f87ea3488905dbf80e2479775940e4"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
