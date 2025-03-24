cask "heptabase" do
  arch arm: "-arm64"

  version "1.53.9"
  sha256 arm:   "f7d04be582d603ed56551c344bf4b20c402399cea82dc5fc61742dee05abefc4",
         intel: "238e3af96b179536f519b2b6039d2bda1071a7070e7549fefc84a49d5891dc88"

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
