cask "heptabase" do
  arch arm: "-arm64"

  version "1.82.6"
  sha256 arm:   "9de4ae78ec8d6eadd608270680c76354a0ff26dc2b70038fe1ca85353016e584",
         intel: "15291ccbc56335177c4eea1b0ad2e315f7f4114b6b5b1e5129834827ac2d0bf3"

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
