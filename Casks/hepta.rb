cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.349.2"
  sha256 arm:   "1ad65e601d6076eef194b211e31952c67aa6f27f2880c977dd3a986be52e28cb",
         intel: "f5a53edc95dcd69c0c8b906a5559cdcc160ad8515e4990fa80927377d21deab0"

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
