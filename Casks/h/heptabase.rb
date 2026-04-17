cask "heptabase" do
  arch arm: "-arm64"

  version "1.90.5"
  sha256 arm:   "8d751838f9a3c7ad6d890b44be9e608c17125eee4f19c5d277e44dceda76fb35",
         intel: "75d1dfb4b3e7f60411b0c8cb8e6120a3ac3f28c1a478324acaa4894e2ac33e7b"

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
