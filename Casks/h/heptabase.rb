cask "heptabase" do
  arch arm: "-arm64"

  version "1.79.1"
  sha256 arm:   "6ec55e0338b0a08b60d4c0bdbbacd4c9e2d163c0b6e700baf1959631271de96e",
         intel: "6c09dec314d2fde30a7b197c8aae2ed45e1d5b35d3fecfac2a31706d06b318dd"

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
