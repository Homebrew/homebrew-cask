cask "heptabase" do
  arch arm: "-arm64"

  version "1.85.2"
  sha256 arm:   "86b9d86bb996f64b68d35f7f06be0ad38a03051730cdddc5f307e02c64006c95",
         intel: "45a2bd770404bd7b1ba83807c539193fcf1b95432a2040e616b7a909cc570cd5"

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
