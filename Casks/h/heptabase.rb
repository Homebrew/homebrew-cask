cask "heptabase" do
  arch arm: "-arm64"

  version "1.83.7"
  sha256 arm:   "a8e3f1bac008c28688a25608fdc122aebfbd875e1f24567693a35f8e8e8229fd",
         intel: "48a80d5fcb1ecc0cc45be7335abd56e21e107a285e06dcf56cb3bc75aee65394"

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
