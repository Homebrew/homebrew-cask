cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.237.1"
  sha256 arm:   "496cada0cb1526fb175dd5c2c442ca24c91108940dcc9b9cb30670bfcd9c7a2b",
         intel: "3e5a3b89f115b30aa02e85ae077c67cbfa37700a8c0522e2fed03d4577bb7353"

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
