cask "heptabase" do
  arch arm: "-arm64"

  version "1.108.1"
  sha256 arm:   "9def337722a32e760e3a44e49518c927044d56ae0a1b49130f02a899da7a0f27",
         intel: "be75f64d0a9219399b8dbc22f45dd19fb50edcf9f411ed697b5b40093f9992a5"

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
