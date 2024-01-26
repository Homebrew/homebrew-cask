cask "heptabase" do
  arch arm: "-arm64"

  version "1.23.1"
  sha256 arm:   "b26a714c1b77e1523215bf95d2351f730ce6a22cf2e7a89f8abe9cbbc82709a4",
         intel: "56dc2e9530ffd3570e65052d132d0bb06372d464b6d9b8d83035a645b53612e6"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
