cask "heptabase" do
  arch arm: "-arm64"

  version "1.95.0"
  sha256 arm:   "542960063222cde7758d214d5295ff2372bfabae1fd92232e8c1955b5e618965",
         intel: "5fe974b2a305a25c707b804dbdc89f20fb8df4601d90d444f573e154dc8a3245"

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
  depends_on macos: :big_sur

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
