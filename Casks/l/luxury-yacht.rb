cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.6"
  sha256 arm:   "41c36b24ec1c26a41a37f6ff7a01bf9e204591577e10d385243054d22fda9b11",
         intel: "7f66df5476fadd49ed325d46e596fb597a77e09ddeafcea571c3778177d2e8f1"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
