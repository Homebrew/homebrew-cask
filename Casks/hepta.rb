cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.210.1"
  sha256 arm:   "ef0429dc0d7a72d41dce9ddf607c70c74e1bed0a5093a8509d01e3e81ec16b67",
         intel: "f79947552da7104a5f765dcb4c322c4b061e4613a315a9bcbd72bbb9f54b65c4"

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
