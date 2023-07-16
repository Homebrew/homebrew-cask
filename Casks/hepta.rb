cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.344.0"
  sha256 arm:   "e15814c03ff7cafc132cd468e0c4f87a772018313de2c565f2e26a2534bf71d6",
         intel: "9e9f5d86836157e767ca41b0f70964fc5bf0cb08032319ec7eaf0a7f49bf094d"

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
