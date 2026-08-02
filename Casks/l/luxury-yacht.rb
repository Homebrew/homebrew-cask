cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.3"
  sha256 arm:   "6d181eac17b6cdff12f7a8c194a1effe45e4de70835ccc51544ef1fbf2ef590f",
         intel: "84812341d3338e0e757af8ee99c06e0c0264c43d8cf9352d9d3c47ee1f53dc0a"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
