cask "heptabase" do
  arch arm: "-arm64"

  version "1.51.4"
  sha256 arm:   "d5427819e3f0fcade7d1c70399745cbb830af1b4ad0220575d567581b8230e92",
         intel: "b2666d9304912cbe25d84a71f3f3571fa4226d8881077622577e7112879f635b"

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
