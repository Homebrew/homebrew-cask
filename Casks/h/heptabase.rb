cask "heptabase" do
  arch arm: "-arm64"

  version "1.110.0"
  sha256 arm:   "fd6f78c1d7d835c8b04d6d4c344b7ad04cc281c23347aa5d6d8036483a60c1cf",
         intel: "ecdf2ae5e6052c6c12aa007d50018a1c6e53de6d15b668e782cb94249fa8eeb2"

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
