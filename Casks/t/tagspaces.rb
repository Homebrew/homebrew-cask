cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.8.2"
  sha256 arm:   "03c5f71b7192b134fed487f24cc01f0f556b0ee42c5d5daf5a6752d127f6d7bc",
         intel: "1b15e53f7c52f1990430fe59b0ec9d3e7fa67152cd42f041bffa3197c960160c"

  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{arch}-#{version}.dmg",
      verified: "github.com/tagspaces/tagspaces/"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "TagSpaces.app"

  zap trash: [
    "~/Library/Application Support/TagSpaces",
    "~/Library/Preferences/org.tagspaces.desktopapp.plist",
    "~/Library/Saved Application State/org.tagspaces.desktopapp.savedState",
  ]
end
