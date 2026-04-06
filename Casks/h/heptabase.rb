cask "heptabase" do
  arch arm: "-arm64"

  version "1.90.0"
  sha256 arm:   "92769462aad5f688f4b1006dccb0d893edf5ce8d4160b4c534b83e631c1b857b",
         intel: "74698fc0dcfda3f519df2647ceabdb5e6330b877ad7b6a983beafa0c1d53e856"

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
