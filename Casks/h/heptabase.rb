cask "heptabase" do
  arch arm: "-arm64"

  version "1.111.0"
  sha256 arm:   "33aa43cb4b296ccbeb948f385bb839a8359ce11e16543be823d09bdfb5237d84",
         intel: "861dd24d39652d51953b1d4e49bc98685766a025c1f869d83b9dbb32ed504ec4"

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
