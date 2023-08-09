cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.359.0"
  sha256 arm:   "4f6a1635817bc2eab6b88550891d1fcad207bfb3da2c2f30daf974b3de7b9e8a",
         intel: "113a4b5a27a7e1985fb404fce7de75bfecc8dce0838b5992a9adc881b260f5cf"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
