cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.1"
  sha256 arm:   "3b9e1b16a41ffbedf2e34270e2d2a0dbb315760a4a486b7dba3e896163e18037",
         intel: "636592e7793d736450f577d730dbb519ab79b36d695dccca68df24442fa7e4ff"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
