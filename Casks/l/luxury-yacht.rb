cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.4"
  sha256 arm:   "4ba303c518509b38a38d90520eb4c35095f8ae5743eaf3cf8d002e9a997af54e",
         intel: "09fbdcffdd1c615a713eb8569d263ecf5452af3008848225ee5b3117e7ff55fd"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
