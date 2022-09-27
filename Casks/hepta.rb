cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.199.0"
  sha256 arm:   "cfc699745c1e8cfd72246515eb82b3c602e1fa9410e7cc9e923c26c4c658bf39",
         intel: "6a035c78fbd6a90e701ee668094bb891d38d21472b76f1bf62fc270c04673723"

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
