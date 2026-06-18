cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.2"
  sha256 arm:   "c461eaaecb099176f4c157de0016e0e7711491210d4b8f1333d3117a746d3064",
         intel: "44131b0be29c82c607a3b194286622c6f7195bdaf9be0c06b9562d47cfaba0c9"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
