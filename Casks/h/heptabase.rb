cask "heptabase" do
  arch arm: "-arm64"

  version "1.96.1"
  sha256 arm:   "e2b56dfbd357fbcdbf1eee44ddc4d77d7aba4c6682fbae2d242e3c1cca1d3d81",
         intel: "a51cbf37f0bf451789dcba12234f4731be685bc938cf66f8641bd904b944949c"

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
  depends_on macos: :big_sur

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
