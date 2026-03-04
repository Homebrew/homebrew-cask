cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.13"
  sha256 arm:   "06bc246bc1d205e0ffed5edaed14b615d30fd7da63c418d1bde105d032b604a5",
         intel: "07a70b30c38548a988b6231dd139baeb52393dc7d60d94afb9823f3a23beff02"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
