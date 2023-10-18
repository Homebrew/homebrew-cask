cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.1.2"
  sha256 arm:   "c1f6d7f07ef0e452b4e99be6fa970bee9ac51ed1752e8f92a860b62cd572a032",
         intel: "2ca3ec968eb6a35542a179d1d18e195230efc454a0c1be698ef51245a2725f4e"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
