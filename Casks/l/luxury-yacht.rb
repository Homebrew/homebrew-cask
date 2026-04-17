cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.3"
  sha256 arm:   "b92816873db680ad7075e33328869eee05d0916e473598a09fd42b6e6ff1368a",
         intel: "ce451f086b4f2091e01d262cb95717aad35ce0b16bbc2ea6ad3525759431a752"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
