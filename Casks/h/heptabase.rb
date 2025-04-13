cask "heptabase" do
  arch arm: "-arm64"

  version "1.55.3"
  sha256 arm:   "ae5355fc5b3912bed5222df854fd2ea7af0d56cd52db186f1a85a4354c3f33c5",
         intel: "bababb958a1ba0af915744cd4f17ee3257d9c99151b9aa492f684a3b97d942b1"

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
