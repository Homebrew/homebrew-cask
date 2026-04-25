cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.2"
  sha256 arm:   "388639e669ed9a2034892c01ef3a9aa2e8b42f18796f2ff9241d3da02fcbd2d4",
         intel: "8d5266facfcdc081d391c209d1385dcaad88057d5acef3c4ff52e4c583208a13"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
