cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.3"
  sha256 arm:   "c470521cf4cc887455bb0258ce1bc0517e9471c684dea6cb4916d17ce7c7d218",
         intel: "53256a79bdca207200ec73806f5f68d0818ef2279806d5e84cad1c6361a05a72"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
