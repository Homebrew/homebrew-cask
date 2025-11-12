cask "heptabase" do
  arch arm: "-arm64"

  version "1.78.5"
  sha256 arm:   "a60faac049eae0fd4e14c3c5b4824f959a06f702cc85a052abe569a4204e667b",
         intel: "3fc1884122cb7788ad0d8c6659b9c6780d53004b829323ea1be7bbcd68722487"

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
