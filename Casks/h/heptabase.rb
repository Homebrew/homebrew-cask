cask "heptabase" do
  arch arm: "-arm64"

  version "1.82.4"
  sha256 arm:   "32383ee8ee32fcfb45c6c6bb8655adda91d03398bce8bb5a8050983f2668064e",
         intel: "7c858ace43cca7f08695675adcecf7c5d422a5269860cbf75d8ebd3f42cc947e"

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
