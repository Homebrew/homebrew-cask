cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.4.0"
  sha256 arm:   "f78f12ed1e4a3c30ad6625bde5b620441d2e466e5714a6679482456518c5c338",
         intel: "472a00d77cad5f56424faf1a8bf82577f3a7a93b8083938834cfd2b6ef384c58"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
