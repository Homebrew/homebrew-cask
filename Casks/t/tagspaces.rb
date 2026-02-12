cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.9.2"
  sha256 arm:   "3ac9a807dc2a3c58ed5032daabf9e4134ddd171fd68c5ce2a58fafecf0105a98",
         intel: "7b05bced9e04d9771c89ebaab937264c434a1daabc83143d403e43c58575d5c4"

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
