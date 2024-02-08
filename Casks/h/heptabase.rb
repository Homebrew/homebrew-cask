cask "heptabase" do
  arch arm: "-arm64"

  version "1.25.2"
  sha256 arm:   "f3af7e8cb9baae40521477f38ebc918aa645e9a7b4f5a56e9214d3086b9306e8",
         intel: "b2bf3d84bb9a82ffdf97df23058715ec8af59d9ae644162470c2c5bdee993462"

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
