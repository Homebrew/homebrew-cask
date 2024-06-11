cask "binocs" do
  arch arm: "arm64", intel: "amd64"

  version "0.7.5"
  sha256 arm:   "be02429568734a0aa2617a6cffa0e9a14c6b8d3859745c5bf02e451a1a355db0",
         intel: "bcb0c338b0d9b528af421b18fa73b8f9e0ea0ca247398fc2d33be95d8bed5d87"

  url "https://download.binocs.sh/binocs_#{version}_darwin_#{arch}.gz"
  name "Binocs"
  desc "CLI-first uptime and performance monitoring tool for websites, apps and APIs"
  homepage "https://binocs.sh/"

  disable! date: "2024-06-11", because: :no_longer_available

  binary "binocs"

  zap trash: "~/.binocs"
end
