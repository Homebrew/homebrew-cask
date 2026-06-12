cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.0"
  sha256 arm:   "bd9ac1743baa1b086de827039f7d13cddc3ecf421d4d876564d91c649e16a5ea",
         intel: "be73d48d234bb31063a5b889aedd919813377e4ce5163e276f1b50229eaec37e"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
