cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.308.0"
  sha256 arm:   "26989b2a2fe3a54973278ec86c9b8f1d5d6a43ce72582a86324bc856e324d4ff",
         intel: "28513bd3785368a2dcd10a2b42820e4fca3f704a880e9242e2528cc7ccb80f82"

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
