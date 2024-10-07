cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.0.2"
  sha256 arm:   "390237285da46d467b797395596b73d1ad6d410aecd870c73d09efd049466207",
         intel: "938161233e4f1023ceaa778a23fe13158d94a2094f4484b6e4a60111dba152b4"

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
