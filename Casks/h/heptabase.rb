cask "heptabase" do
  arch arm: "-arm64"

  version "1.78.6"
  sha256 arm:   "2ef68d1712f88ab87bc4becf8190ad8017acbe849a4e3052f0c42c7697596b0d",
         intel: "6f2ed779157e3c8ae35c787068d201ae9099d7099d8414803d9bf207415f52a3"

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
