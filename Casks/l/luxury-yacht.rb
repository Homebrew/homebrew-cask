cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.2"
  sha256 arm:   "5909158500858cedb8f1b1e7f092546ec445118bf921c5275e57991415993c8b",
         intel: "5040803dae11069802a24812d17c92d6ab54bdb74c176942800f880b39abaece"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
