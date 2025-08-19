cask "heptabase" do
  arch arm: "-arm64"

  version "1.70.1"
  sha256 arm:   "51c107d1117685ab7d389ed01271d4ee10eaf145ec170620de287a7ee0eac926",
         intel: "ee743b26af62362abb3487ba8f7f817f3cce50d61ff53aa8c7baab20c1dfc817"

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
