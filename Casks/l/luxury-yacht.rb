cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.15"
  sha256 arm:   "f59dec383db448d06926e41bf45f061b6d4c246fd4148ef3eae2b9b53478d59d",
         intel: "59796e9cf779aeb9676e43e076d1ef24723ea03b5f89beb70acc3fee77a160f3"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
