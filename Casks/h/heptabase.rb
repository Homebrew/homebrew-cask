cask "heptabase" do
  arch arm: "-arm64"

  version "1.29.7"
  sha256 arm:   "9635ca15b125dfea87daec2aeaec4499a429debf46232bbb29f8b41c6818180e",
         intel: "ba1ad808145f33263f62a9bfda9f94ba3059508609f8c10b0675f3c4f7153627"

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

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
