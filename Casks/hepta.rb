cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.265.1"
  sha256 arm:   "dba8dba317b9e47613b83fceebe081b35d941f22f848116c8339de1ba5806f1e",
         intel: "2d8b494646d32969869afa7b5967f17818660e7248f82380b52aee2159fbd591"

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
