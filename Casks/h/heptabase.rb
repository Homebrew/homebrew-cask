cask "heptabase" do
  arch arm: "-arm64"

  version "1.86.1"
  sha256 arm:   "ae968120fbe9fabce76cc43523bfa019bb30136982e763f5934699dd837f106b",
         intel: "c7cb3fad27a5078e7b49675a15f46ebd56c8312eb15e0f62774903c29bf6240c"

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
