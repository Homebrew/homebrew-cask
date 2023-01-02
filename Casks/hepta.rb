cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.247.0"
  sha256 arm:   "ff96608cd9c5ddd6ee1e37b21594b8d7b750d92f77ec22db6b669858f61b2b6a",
         intel: "ce2148f9ad4aec91ce4f9dfe3d70168fcc328b2a9dbaf4ee1ce662c09b373416"

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
