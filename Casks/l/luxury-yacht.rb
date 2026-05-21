cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.7"
  sha256 arm:   "e412e05f75c7cb6bb2b3c77fe3db1ed663ecec3cc566d6eee733aba172bda52d",
         intel: "192cc1d3a23794290f17cfd0f77c26b6afd5df1be56c1a09bfa002c1ef65ed03"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
