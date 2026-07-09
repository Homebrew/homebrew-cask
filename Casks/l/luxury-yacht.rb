cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.3"
  sha256 arm:   "c4f8452152fefc39cfe3d7c576eb3f2d58d57827a20c64f99a1a314ce3b9013e",
         intel: "304f0b5a5f05b8355d6f3b718c07e76bd46d79440abb6eac5887c8ffd0e9fbf6"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
