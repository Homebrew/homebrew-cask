cask "heptabase" do
  arch arm: "-arm64"

  version "1.109.0"
  sha256 arm:   "3c57c2cd6eabf29277dfb3ef62033e4fa96b2809de8009b6edb901dccf83c2ce",
         intel: "9cd9e14725e0ac80d7749b521537a3cb69b8f287f6b7d4b2fa20e9415d02f0de"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Heptabase.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.projectmeta.projectmeta.sfl*",
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
