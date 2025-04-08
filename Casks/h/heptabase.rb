cask "heptabase" do
  arch arm: "-arm64"

  version "1.55.0"
  sha256 arm:   "50c4bc05e1754981e0d8d61f2e00cda96c5a642f61d707c76ab9c40a0ef8df96",
         intel: "9fce36588af3bf32e39ad7bd8093de6c832b3c06b650285d78073e988bbe161b"

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
