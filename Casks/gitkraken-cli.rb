cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.0.4"
  sha256 arm:   "433eceacff683230cec15a09d1185b87d25e64fd2d62e44e29659686d165ee07",
         intel: "de8b21f09478a4a70083e430b992dd53946ed5e023c1871ed123fc11d33c69d2"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
