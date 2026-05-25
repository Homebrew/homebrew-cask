cask "heptabase" do
  arch arm: "-arm64"

  version "1.96.3"
  sha256 arm:   "e78d7823c1208191257286393b19fd2a49d2a874ac5e51589f1ab8c8c62997f2",
         intel: "834d94007e1cbe281af79c899cbde4d1b44be8849b6b5369378557107ff23d47"

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
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
