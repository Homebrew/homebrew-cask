cask "heptabase" do
  arch arm: "-arm64"

  version "1.87.1"
  sha256 arm:   "ac516212f6ce8ae1edfb173476af5ec31a9661b4dc024132b8297f8c680d47ca",
         intel: "e26e79c35de7aeb806c66606c1dd72dab6ced3b0934ac112f6be546a085708d9"

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
