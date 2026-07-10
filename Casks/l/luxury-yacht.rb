cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.4"
  sha256 arm:   "989bb2e46a5959d8c1012ac8028a5e409628313838b245e269b903d8377ae7a0",
         intel: "c5b2d2466d797210dce2021d459b1d8f491cf1cb591c95a86305ca8f5698c963"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
