cask "heptabase" do
  arch arm: "-arm64"

  version "1.31.8"
  sha256 arm:   "9850d440bf6d4782b1bf00129d97fa39fcf1e6ef7794d171ffe568c44339fcc4",
         intel: "55b8ab50668999511f292b3defde40ead108902de4f0b8aa4e030c791e315e0c"

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
