cask "heptabase" do
  arch arm: "-arm64"

  version "1.76.2"
  sha256 arm:   "d6ee0b1ea6ab639ef2f8c9f0d7195a478cdc26b471e9d8b54f418a70e595136b",
         intel: "20b396bacecc1ff10748de3b8b8363e4496410785e51eaf9677740e8f18c88bb"

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
