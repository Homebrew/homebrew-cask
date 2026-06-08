cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.8"
  sha256 arm:   "a8635419375f9e2470c47b60268dc201173ee1072f2dc5f0a15c01757eafe170",
         intel: "9563d2bf920947d660b03bf3c3b85e66f98034d471f2562dd7c132e9b63cd70b"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
