cask "heptabase" do
  arch arm: "-arm64"

  version "1.53.3"
  sha256 arm:   "e9a682f762eb2322434163d6b0606b8f7e4096eed6539abb9578a5d3ce157571",
         intel: "38d4658fdf35c73a88df1dde538f82d99e393989982db5d5cdf854e548477533"

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
