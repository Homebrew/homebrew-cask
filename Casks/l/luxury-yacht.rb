cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.5"
  sha256 arm:   "40e9b868c2a9cd0ec7a4a6ad94c45ac993f9fbb4b613a24e4f7905996cc0f643",
         intel: "aa6dafdbafb6ec222dc3472f4141dc0b43c07d509acc07c7a3de5954c67df138"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
