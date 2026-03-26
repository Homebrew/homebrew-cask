cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.18"
  sha256 arm:   "14816768ae6064e0ea6c0890018200df8d31c79dfc30e49605d959785dc13c96",
         intel: "56a392e91b9b1d831fd7cacae8e22faf348609df25141da1a07545b844f1bc5b"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
