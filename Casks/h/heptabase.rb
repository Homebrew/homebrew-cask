cask "heptabase" do
  arch arm: "-arm64"

  version "1.74.2"
  sha256 arm:   "4a6ddddc12c6e353840ef436b3223fd4171ec29102c3fb4df33381595bee7be0",
         intel: "19e4e3d2f4cd91d164cd85e3af8df0768813f041dea6e0d19719098c1a6981da"

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
