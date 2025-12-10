cask "heptabase" do
  arch arm: "-arm64"

  version "1.81.2"
  sha256 arm:   "c5e02364430ae6c68c11d1add83ac8817e6a6a7c115367836a8da06b95ad2797",
         intel: "9c1e00b4b9d65ffa168969332435db584f72871c8bbc69e4064c3a8def1a0a1f"

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
