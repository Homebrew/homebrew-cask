cask "heptabase" do
  arch arm: "-arm64"

  version "1.82.0"
  sha256 arm:   "258c6c5f6f66eae27e3bc3b2f7bea1ac77a69b9d1b89a56a3e045c3267569c5c",
         intel: "29060292eefd7cfea70fb0cb92eb9d0f1b98de31b8bf722480ea9a41ab58d645"

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
