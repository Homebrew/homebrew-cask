cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.4.1"
  sha256 arm:   "5ae171167d44dc96c14f786e9f39ab6cd57c751cf6e3e55b1357662193cc10cb",
         intel: "e977ecfcfcf629be0b23dc7f6b1acefc111d5b21083ba5e6703d4e1681f40999"

  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{arch}-#{version}.dmg",
      verified: "github.com/tagspaces/tagspaces/"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "TagSpaces.app"

  zap trash: [
    "~/Library/Application Support/TagSpaces",
    "~/Library/Preferences/org.tagspaces.desktopapp.plist",
    "~/Library/Saved Application State/org.tagspaces.desktopapp.savedState",
  ]
end
