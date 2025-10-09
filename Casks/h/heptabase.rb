cask "heptabase" do
  arch arm: "-arm64"

  version "1.75.2"
  sha256 arm:   "9ad781e8ff8b6c2ba332de42f11b8a7de4da7922e200f30cf0dcf3fa005a471d",
         intel: "2d27a362ebc6881435a4b196cc80aad875ef6a4765daa22a519c13fd30e665c2"

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
