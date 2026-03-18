cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.14"
  sha256 arm:   "427f96ecfd27ea10d35c778a236877c22dc096ce47f812ef88b863775453fd7c",
         intel: "3464205335836662eec1cf67793447ccf2d2ca7b4191239dc893296f305252b0"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
