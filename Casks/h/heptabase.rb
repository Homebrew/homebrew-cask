cask "heptabase" do
  arch arm: "-arm64"

  version "1.103.0"
  sha256 arm:   "060618fb2e569d08df2995f96eeb0fd7857f3dd1d90ad08ed19bd31149fb05c4",
         intel: "c164aec63b859bf373f6b2211e6177931cf8afdefbc165244f5c8c9b583481d8"

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
  depends_on macos: :big_sur

  app "Heptabase.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.projectmeta.projectmeta.sfl*",
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
