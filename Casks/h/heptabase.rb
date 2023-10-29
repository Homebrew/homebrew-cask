cask "heptabase" do
  arch arm: "-arm64"

  version "1.13.0"
  sha256 arm:   "4f02bd3ceebc59d18fb959b314979debdf149f63ec5959630992d0eeea5581d3",
         intel: "541d6567b9d855a166a3a687307fe62cb8a934b63a5b79e5ddcbf9c9a48713d8"

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
