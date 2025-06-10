cask "heptabase" do
  arch arm: "-arm64"

  version "1.58.1"
  sha256 arm:   "8cb16252c3e45b2fb777eb9a38b432a092a24179852988a458d2878cb5ca6aff",
         intel: "b9e57a184e98db375cd30431f8b0a9308d9cf145bc953a2495c65615f5d32c65"

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
  depends_on macos: ">= :high_sierra"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
