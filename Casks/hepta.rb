cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.304.1"
  sha256 arm:   "84810b22bf7c68bcc7da7d203cd0f589382facd185ba56c8a2458dcd46394ccc",
         intel: "6a32ad7623ceb26c9157e5054023002c03fb22c2875a07d9bbd245e237e7dfc7"

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
