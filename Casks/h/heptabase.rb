cask "heptabase" do
  arch arm: "-arm64"

  version "1.31.14"
  sha256 arm:   "9afb24e7aa0042a29d3a38f74069ecf2a25b4961d4934219cd24cfe981d4345c",
         intel: "3da390a719c5d4223f48997e5c4a1511b539709d03840e071a66bbe6a5b47b7c"

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

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
