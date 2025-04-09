cask "heptabase" do
  arch arm: "-arm64"

  version "1.55.1"
  sha256 arm:   "d7d17eca4854f394d412e1b6b4de6656b4426501ac9a1f479e8bcdec0f97e71a",
         intel: "81fd2bf70a9669c14e654c97316cf55fa23ce732a83a1768930bc23a4835e5f7"

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
