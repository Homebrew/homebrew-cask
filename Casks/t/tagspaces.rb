cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.0.4"
  sha256 arm:   "b2ec24017b7187f9b82252d02cb9ffe479dc7527758b6304aa4cf90d7fc8cc55",
         intel: "886fbe4221edb882b802e04630afeb9addb575ccdf718b6786de4f8aee022c57"

  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{arch}-#{version}.dmg",
      verified: "github.com/tagspaces/tagspaces/"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "TagSpaces.app"

  zap trash: [
    "~/Library/Application Support/TagSpaces",
    "~/Library/Preferences/org.tagspaces.desktopapp.plist",
    "~/Library/Saved Application State/org.tagspaces.desktopapp.savedState",
  ]
end
