cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.7"
  sha256 arm:   "83c18d0bfb564846cc808f14cd7ceefa34654d6fd25eacfc27e47d474283e4e0",
         intel: "ba05d35371c1420f6b6c89162514569c8610c475c0b1af502737387a6d2b1cfc"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
