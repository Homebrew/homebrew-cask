cask "heptabase" do
  arch arm: "-arm64"

  version "1.89.2"
  sha256 arm:   "6d66494204f8e961d2e29fed24e2970a1fe7bba179e396c38a6930ca5e17a44c",
         intel: "ae7585f756d9f5b82b4c1b0974cc7936916fd7d53f2f5aebd17e121af9ccaf09"

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
