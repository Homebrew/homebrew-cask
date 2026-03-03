cask "heptabase" do
  arch arm: "-arm64"

  version "1.84.3"
  sha256 arm:   "d9e71e86db8adf91994f7a236af7b34301186a15e377d952dc6bc66ac0ef6d22",
         intel: "e66be64a660216840228a92422cea090d908b4cd6f28e439ea065a81f82a83c7"

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
