cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.0"
  sha256 arm:   "d186ddc4c20da5874f1efbb66c4cba5fd251c9220c2c99af4ca99ba93cdd93ec",
         intel: "cb1171ced099ce03c204e0988f5425d5cb6ce2e9f5bdb1e1153fb93fcefaebeb"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
