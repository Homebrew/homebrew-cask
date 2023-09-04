cask "hepta" do
  arch arm: "-arm64"

  version "1.0.0"
  sha256 arm:   "d5a5b0892742a48cc7be38e91a8ad6aa1253019c3e95353147b88cb322042876",
         intel: "34217932ee91fb4db89d8ed7e0db50376bf70e8f75f1cdfc7b7ce07abfa9de37"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
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
