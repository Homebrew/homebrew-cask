cask "heptabase" do
  arch arm: "-arm64"

  version "1.76.0"
  sha256 arm:   "193c63b8b1e3bd477a11db4425a93cd71764f2cdd79b91ffff9926de08406242",
         intel: "abd57ad3f09b9f1c04c4ce6505d79ad555c4c9828d4745c0dc1feefcb8854a79"

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
