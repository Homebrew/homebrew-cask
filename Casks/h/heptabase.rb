cask "heptabase" do
  arch arm: "-arm64"

  version "1.107.0"
  sha256 arm:   "cfb97f48186289083a636718f2d69a5dabb3c269a9b7172e3b85a0022814652e",
         intel: "2cea484c1d1dcecf49006cc1f6050088552cab9f8d4bee6af1e209f5b1342cf1"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Heptabase.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.projectmeta.projectmeta.sfl*",
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
