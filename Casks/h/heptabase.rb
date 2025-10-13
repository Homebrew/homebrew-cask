cask "heptabase" do
  arch arm: "-arm64"

  version "1.75.4"
  sha256 arm:   "12cac4e646f3bcf64a987a9af84554c7fa80ac16db8e58fbe90677758921593a",
         intel: "82e8f89270e8f96f87ea3e6d169d72a80fefe94c8ce44780c369937a7f7e0106"

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
