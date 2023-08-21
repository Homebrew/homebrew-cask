cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.368.0"
  sha256 arm:   "56bbfd21ee00e194b9d3795db6aba5e8aec1c133c78d1cdf77677af288dc180b",
         intel: "4efc20d4a5c6eba91a210e95ae483478b49301b883ce5d341e8afdf6bdb0145e"

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
