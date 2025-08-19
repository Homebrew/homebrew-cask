cask "heptabase" do
  arch arm: "-arm64"

  version "1.70.0"
  sha256 arm:   "d86b3aca6b23b93da3519822041b0168783f575c9f71659d063f44eea3035b68",
         intel: "b331794358492cbc8e3aac5540681eccf155624a7f06bd0d6cdba4d4e839f3e1"

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
