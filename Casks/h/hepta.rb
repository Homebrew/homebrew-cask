cask "hepta" do
  arch arm: "-arm64"

  version "1.0.0"
  sha256 arm:   "a46d04472dc6084ba2fb337960bdcd877d0a0902ca34a793c3204463d472a5f1",
         intel: "323e6b6516723e9046267c247fc6c33f8beb0233bc2c58e355ecd03f03b7a2f7"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}#{arch}.zip",
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
