cask "heptabase" do
  arch arm: "-arm64"

  version "1.87.0"
  sha256 arm:   "26a6a011be51f7e165449822a0a4455ab19ae0921d538a4849076625700682ad",
         intel: "6472229b909f864157a3148868d8e4c123390067371efb9430eb8d65889c4020"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
