cask "heptabase" do
  arch arm: "-arm64"

  version "1.99.0"
  sha256 arm:   "0d530330f13868027108f168b11111e60648a60fac588f7fbef80d4959c762b1",
         intel: "765cf1b50e74356e469322b4558dd7c493bf700729d0caf024052897731c9676"

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
  depends_on macos: :big_sur

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
