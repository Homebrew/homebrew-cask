cask "heptabase" do
  arch arm: "-arm64"

  version "1.55.9"
  sha256 arm:   "c7ec5bf579b377c4c7e2eec65e454dbb5c15281b83b4e4602cd97a14e5c22bcd",
         intel: "96a71a85e4940d238d103bbd9d426358299cdfe68c51116e48590286c23abd04"

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
