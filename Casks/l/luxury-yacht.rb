cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.21"
  sha256 arm:   "9119e0153c9591307826055f7053eefd709be45a921c49f0344ca1dc2d77b295",
         intel: "11a7d0c9b7f6b189e9fda97d3a7bd78fa1ac7ba218a81df6c2f4f498a4f4f6a1"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
