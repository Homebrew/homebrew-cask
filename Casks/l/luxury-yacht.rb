cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.6"
  sha256 arm:   "4bb102e0c5f3d56ec524b189f342ba5041720b5cdadd40816cf69e7e51e4e143",
         intel: "789d66912d9e9df842654e7cd8d92f6935b8c744534cb2ad4f9d19c79b9c7b98"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
