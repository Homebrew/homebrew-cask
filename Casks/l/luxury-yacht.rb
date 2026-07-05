cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.2"
  sha256 arm:   "da2bb0c18351009107acef286900a19d23d6c7ddccf6a1929f8a3fb8f91005c0",
         intel: "4c33bac77ee1969244c09392bb8d6ea2b721c5ba4982c78906b988f556161f84"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
