cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.7.28"
  sha256 arm:   "5b0e0bf4a82a1d266e5520dee35a02f72ce55d975bf14f711eaa8d9e3c5e5278",
         intel: "f2303b2875bd7a357b8265696e0589ab70bf3eac1294baed4c58c3a41146ef4f"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"
  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end
