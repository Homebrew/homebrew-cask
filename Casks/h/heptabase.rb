cask "heptabase" do
  arch arm: "-arm64"

  version "1.57.2"
  sha256 arm:   "f570a47c982fbd371392818c41938d6434dbf6f5c69fd89f62162cce2f60dbb3",
         intel: "f64a7782d24d5c3d2fe4dca0392ab76682c137a7d5f90628c3ae2f4692569c17"

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
