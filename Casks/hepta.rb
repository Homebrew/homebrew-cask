cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.218.2"
  sha256 arm:   "58a186d0f1b2542d65c6f6aec52b74f06969e449d68cc20e0ff41c37d1ae6ff2",
         intel: "63a06ad803bf7f4d37762c0ff478bd751c119c3f9203971f8d393df53324020f"

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
