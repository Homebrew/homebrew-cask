cask "heptabase" do
  arch arm: "-arm64"

  version "1.34.1"
  sha256 arm:   "3942a8920cabf2ec58240446fe8361a60f9a49afcb325230c0969e120d8ebebe",
         intel: "dc9764eb087047a305af96f330544b582d50c2ef78c058cc213a39651b4c534a"

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
