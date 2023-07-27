cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.352.0"
  sha256 arm:   "cab1a5163ff2656c99a5b3f7433e8f26855fad575ab43b2c89ddc5318741b5ad",
         intel: "44c4c4077dd0bce73e954c2d4140be62ab27bfe097e7acd44c286228fa396c72"

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
