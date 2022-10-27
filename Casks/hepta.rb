cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.214.0"
  sha256 arm:   "02d74ca3e1ee3f294851d2f904bfb0696d645f031c0000b472b068e2cd6a5af8",
         intel: "8ef2be79ccbcdf8bd2bd1f2cfa569c24fc546c3e6c9b15a008474ecd0eec5378"

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
