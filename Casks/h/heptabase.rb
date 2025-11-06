cask "heptabase" do
  arch arm: "-arm64"

  version "1.78.3"
  sha256 arm:   "b2a31f4c0cdf44c41bdd2becb3252eb2bd58e430360ded90f4c135236fe900b5",
         intel: "b40003edc14b2e47857ab35adf2c546581834c81b83c2434b0c28bc19df32a80"

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
