cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.336.0"
  sha256 arm:   "4656cc0c226337f91b6da2fc43b8de500cdfd7112553ef30a998e763663741f9",
         intel: "ef52858bd07a42b06f2e69e9e1b452f88c995c5e1f6a215fd57924337f5a2c8e"

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
