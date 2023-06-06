cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.321.1"
  sha256 arm:   "4c3a401cc183abdc1f1cd358819dc84ff573a626cf7848428027bc2c385b793e",
         intel: "f79b13384be23bdce23795b3a4506da8d805fd5c8e85ffc82b4eb54baba071ea"

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
