cask "heptabase" do
  arch arm: "-arm64"

  version "1.43.0"
  sha256 arm:   "3cf1fb0d590a307fb76914aaa9881aa79efda322e897f02d04afb7cd691d21dd",
         intel: "a0eda7549998028654e649d124bdd6787a42cb77253d3472ae5441af24b0081f"

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
