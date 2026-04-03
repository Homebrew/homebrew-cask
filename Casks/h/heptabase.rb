cask "heptabase" do
  arch arm: "-arm64"

  version "1.89.1"
  sha256 arm:   "a4687a5a4a64329e752396025bc7816bb5721099f24175fb592aaa36ae5077e1",
         intel: "cda086ae524b98a3a0defa65ee7cef9b67a366434cb8b0ecb3253a1b519dec5d"

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
