cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1"
  sha256 arm:   "9bb064b9a0cc79d7a9b35fad861a983e66fc5def55bc52b82329b66d546e73af",
         intel: "5186ee55d68e15b5c4399b16bac914c3140ef83c00a4c165b4011225e73ea3f4"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
