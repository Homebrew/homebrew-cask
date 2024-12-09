cask "heptabase" do
  arch arm: "-arm64"

  version "1.48.0"
  sha256 arm:   "7e76d005d363c8d75fbbe7338ebb4515269b054ba8b9ed82e4924c9820728030",
         intel: "6039596720ebbb6f1a856039e132940ef01c4353cda01656452dcc718770fb46"

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
