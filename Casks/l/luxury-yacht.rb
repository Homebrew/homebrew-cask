cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.4.3"
  sha256 arm:   "fae74eff83a32cc20c995aebe0cef5e9bebde3dfc4079acd99acc45cdb9899fb",
         intel: "2dddc3cbd354c4051ea70e21e6e6ba9c4c552f02c434345c87269aa4808d5b24"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
