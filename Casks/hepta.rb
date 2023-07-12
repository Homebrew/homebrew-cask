cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.342.0"
  sha256 arm:   "907fe351d32c362d85cc01d9624fe0dc90201425c360b726088e07529cc90a94",
         intel: "8ccc22cab3136ae11432cf9d479fb9a9534dbf8cd786d3561609d4df9db49aea"

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
