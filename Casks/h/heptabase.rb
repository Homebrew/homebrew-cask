cask "heptabase" do
  arch arm: "-arm64"

  version "1.67.0"
  sha256 arm:   "b5c8db6187af6f21d0650a767afed146c7bc10a3a7ba6d9470d942a4ccad06cb",
         intel: "dffb0e956f7bf1d9f45279317194c0c5e78024a13cb8d032b9f8c590337bb6b1"

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
