cask "heptabase" do
  arch arm: "-arm64"

  version "1.73.7"
  sha256 arm:   "dfdd1790de9798e88eee37c76c0b580cdaf242b6bd6d18aa24178a66066d8faf",
         intel: "e998053af720bdbdde1f9e548ce4e0c426df9ffa723726ec3603d2ebf3f3fc63"

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
