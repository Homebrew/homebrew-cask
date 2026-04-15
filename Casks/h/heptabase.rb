cask "heptabase" do
  arch arm: "-arm64"

  version "1.90.4"
  sha256 arm:   "719a83f196342e70535a6e71f4e81f77d5392c47fc1f1845163b23b801aab302",
         intel: "48ffd186052f8eb1a2e10a56157c1a20add47554951552d536fdf15dcc54b11f"

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
