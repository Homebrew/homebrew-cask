cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.2"
  sha256 arm:   "75c043d2c81eedbc048246032b29b5fbef1c3761d996c250f768a1e8d45df89c",
         intel: "85e2330584578a8100e477bb6155a25c7cef4a94bee8b62f47c6877d7870d112"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  livecheck do
    url :url
  end

  auto_updates true

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
