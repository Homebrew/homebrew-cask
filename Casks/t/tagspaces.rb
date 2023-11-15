cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.6.1"
  sha256 arm:   "f7fce5743cf765833b6877b4341f26d4d38a640a98a9b93372d7785165f37ea9",
         intel: "6af6906e3ec479371ca770fabb15e6fe642f69ad6dcf90f470c1a44856fa5ffd"

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
