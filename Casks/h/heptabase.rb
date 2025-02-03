cask "heptabase" do
  arch arm: "-arm64"

  version "1.51.3"
  sha256 arm:   "6392447ddf58b8b9e161165351916050befabb059694baa89bb3380b4b76cd12",
         intel: "20efa3106b746ec4981bf92ed6289d916e1031ee4df7fdab070755b9073f3760"

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
