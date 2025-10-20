cask "heptabase" do
  arch arm: "-arm64"

  version "1.75.7"
  sha256 arm:   "08781995b989226667b4f25fda110faf8d52f901681bd8c3f0cdf5d49acb14a7",
         intel: "d2c80aed15856b4475f02d6469571ce63c464a124a78edadf516aa720f04a267"

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
