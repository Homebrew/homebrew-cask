cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.4"
  sha256 arm:   "5040c6a06b28498181a437c193e7c5f745f9eb5c8fdfa94ffbc43325e13abeeb",
         intel: "4a7e8ae396c324f3e12f9b57f0ad561971fad3e69ca96945a2d913b8c1b47a31"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
