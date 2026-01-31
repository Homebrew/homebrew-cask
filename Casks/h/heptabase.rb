cask "heptabase" do
  arch arm: "-arm64"

  version "1.83.5"
  sha256 arm:   "28106d9f7820b61d3597b987688f3f5f252f6af35b852f1bb1a4ac6e3ec5f8d9",
         intel: "d9e710bd02b31be08515ed388fd397f88772fc4f6f380bb453f9cb5d1f7a815d"

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
