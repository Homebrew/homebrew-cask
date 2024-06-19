cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.8.5"
  sha256 arm:   "ef650e746bd2940af7b115bced29344827e4fdc52a5690ca389b57f603ba9195",
         intel: "084be7d3947343f9887f1403dca81f89b156c9dfa73ecdebf580bd36a8b73698"

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
