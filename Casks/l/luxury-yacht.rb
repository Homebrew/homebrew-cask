cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.20"
  sha256 arm:   "69c9f3c24ad55d15f0cc2c22499887ee72b53707e1e81cf3d0cbf996f6108c7a",
         intel: "880b4d12271ccf9dc0893b98f7d18465503d45b4b2ee56f160fd92b7ec1ac568"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
