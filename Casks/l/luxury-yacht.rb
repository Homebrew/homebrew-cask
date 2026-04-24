cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1"
  sha256 arm:   "eb229515ca9d16d3e3f17c9d26410a268d714f312607ab93e35f326bb4d7650e",
         intel: "6cc947f48c7ea41a610659ef2a8e520898bbbb58801eb0dcddbafb6793cb1c40"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
