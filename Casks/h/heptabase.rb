cask "heptabase" do
  arch arm: "-arm64"

  version "1.32.8"
  sha256 arm:   "dcc73847720aa4291ba92b7450a320468f0077b484a6158336ff86887d11e244",
         intel: "8bf4693c6199e8636dae9f8ca838fd5ab7ad1b9f395fac4e572223eb897276b9"

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
