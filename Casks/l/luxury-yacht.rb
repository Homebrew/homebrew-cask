cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.5"
  sha256 arm:   "8f1eb1f9e3c2a51267543a24195bce4de67000f636b6e9b68e0d494f6cce416a",
         intel: "8b8fcaf325d5d026c4d6147d011f2bed3bc97adf31f993d16cf1f9d055716994"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
