cask "heptabase" do
  arch arm: "-arm64"

  version "1.98.6"
  sha256 arm:   "b6222c915c3a0057ffa4ef01cfc91548089d391be7209a1d0ff5cd3f101918f4",
         intel: "c5f5565e94079c5041a7698f69df79411eb084a29021211fe7de8c5cb330a52b"

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
