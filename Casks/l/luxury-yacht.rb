cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.0"
  sha256 arm:   "b9727b8ef6b638ecc30a825cb65d917bc6449d1dca2285f3f9311c93e0a47289",
         intel: "8f8c990033456274113faebf4b72cdb92c3df33c2f3ed2dbf2429cbbd33d159b"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
