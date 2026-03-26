cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.19"
  sha256 arm:   "fa1021e4674a92bec0701b10e88c2701aff58c46784c90618f09e7859759bc59",
         intel: "a7fd123bb4e1698edf56869e44ec0d773e4f3da279fe84902726b7d9eca6cb49"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
