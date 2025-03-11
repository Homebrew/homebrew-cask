cask "heptabase" do
  arch arm: "-arm64"

  version "1.53.6"
  sha256 arm:   "789df4c27a4e43302ec5d0be0caa723ceb243ad758e4f8655e185efa022ea349",
         intel: "09b197c85a29bc26898e506f5bc09898c88808d597b51ba45a8b2ea217a9bcbc"

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
