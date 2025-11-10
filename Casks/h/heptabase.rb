cask "heptabase" do
  arch arm: "-arm64"

  version "1.78.4"
  sha256 arm:   "2eb72810354e08062291cf371b838751f1337c45766a7ee5aadb4e441337567b",
         intel: "dd2de45985ac1cbc414f89c9999c2cb6b6c19c246a5c41391446d767fc0589d3"

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
