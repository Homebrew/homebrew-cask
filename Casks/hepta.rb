cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.322.1"
  sha256 arm:   "49b0e12cd34290ded7ff9fd84a383217694b8e40530d01967b16d136c674551c",
         intel: "b4a00d57bc3b91433e7e948c2de16f7fd83bfa6ff34ab347e3c075c06b0b7fba"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
