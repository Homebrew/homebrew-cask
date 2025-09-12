cask "heptabase" do
  arch arm: "-arm64"

  version "1.73.2"
  sha256 arm:   "28a59f12771aa1cf35035b8051dc4f1ca8b718ef2a1182f6fb6d629e6d161e92",
         intel: "777f073b56fe877b7390b45ff72ee7898cb3cd29d39b10131a004eb84911bb45"

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
