cask "heptabase" do
  arch arm: "-arm64"

  version "1.75.8"
  sha256 arm:   "0b96b3e4f40606d1ea35bfd897a591663d2c93edd3281d2daada4b06af13edd9",
         intel: "98f037acea32865cae8d048f121b49160216d00b3a555e5a671348d399821aa9"

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
