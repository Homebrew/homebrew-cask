cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.4.1"
  sha256 arm:   "316609d978984008d8056687b2c33f674841edd56e8327e8c486fa2864b300b2",
         intel: "0bf7c2fb6104cde3cf98e3dfefee632b87619a88c6f85bd8464f37229dcec1ef"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
