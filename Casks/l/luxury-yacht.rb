cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.1"
  sha256 arm:   "fbab947f34aceeefa13be8d8eaa483b8ec2e49faaa5a805ff68c6cbd4f316f2b",
         intel: "4cb5ccb0c33df38f21e0d10c5e0deabdc3a22cc9be6b2fee2fba1cb87e3678b7"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
