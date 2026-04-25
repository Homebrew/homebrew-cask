cask "heptabase" do
  arch arm: "-arm64"

  version "1.91.1"
  sha256 arm:   "919a91a0a480f9bf4e42156bd1246344fd49559d6e7e374d2cdd134db89ff67b",
         intel: "decb60490c409d2962ee52e2180c2786b1323607cb7a226ccb35ba93d8f00553"

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
