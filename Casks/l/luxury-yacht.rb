cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.4"
  sha256 arm:   "eb4b851285d617290605505fe96132303a1ce0d0d0a46e60bef4ade54f06408b",
         intel: "b1e8e315123fa2805432abbe7f514e581f46482c6fafc1e6b0658a6056385a09"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
