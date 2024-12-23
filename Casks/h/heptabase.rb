cask "heptabase" do
  arch arm: "-arm64"

  version "1.49.0"
  sha256 arm:   "83ce3b1924146fbc0cd8fb494e3e78a5e2293df8eb099b94aa55c52cdf60124e",
         intel: "713b2cedd245454c37423a6e3d6ea1e6dcf99311abe8bf5fee70afa05e2564fe"

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

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
