cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.5"
  sha256 arm:   "2381c40b3e5dc44b8acfeffe3523ee8d579c42dd0500353f4a24a849073e930c",
         intel: "58f592f6c66291cee1c1db6964bb90c754be39c96b037600969cab2ed0a291d5"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
