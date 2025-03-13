cask "heptabase" do
  arch arm: "-arm64"

  version "1.53.7"
  sha256 arm:   "9e14196c7db434524f9761466ea80f8701edc06989b1c504ce41435ca9ebc1b5",
         intel: "238e43899e0c17447aaf07937f4bfee189bee4cb37df711bc1eb63eda3eeac9d"

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
  depends_on macos: ">= :high_sierra"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
