cask "heptabase" do
  arch arm: "-arm64"

  version "1.82.2"
  sha256 arm:   "3aa0d2b046b56166c246d1572a1142a71fdc20a7698bacd4ae4eb0674033cb80",
         intel: "20a70f859de433f37d0524a58e240a059fc0f7bc4dbcc3afbd461480572f4a57"

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
