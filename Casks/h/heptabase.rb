cask "heptabase" do
  arch arm: "-arm64"

  version "1.65.0"
  sha256 arm:   "3b131a39f43467f4260d623b1dede436e850cb5497859ff68d545c091c5431c1",
         intel: "831d6196da343046238505cb2630f479984afea49c9620fd3c30b3502d0d58df"

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
  depends_on macos: ">= :high_sierra"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
