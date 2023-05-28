cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.313.0"
  sha256 arm:   "08ad7c428914c6c432d9b18c6677d8151d31ad490988abb559469d2b7492b0ea",
         intel: "c658758d6e02520714928df22322e1ff47f028948208c5e6422d49c93ac13d96"

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
