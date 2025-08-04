cask "heptabase" do
  arch arm: "-arm64"

  version "1.68.0"
  sha256 arm:   "e5e9ab764f6095979387a8a87c3fa908a0dd663d6dc25814a251e27935635738",
         intel: "a97fbacbd59f2b06556b20698c2bb5c41ca63e9a32713d73ef07f73d0484b0ae"

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
