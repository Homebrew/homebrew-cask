cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.4.5"
  sha256 arm:   "ea9da82883462f3dc7df40c0c5d1613bbe0a57d219154281b7b4c0107c3590b2",
         intel: "9ffac4dc1c4697a8c02533c7563ec4418ac8bd1235d2887219a7e2f306828a1e"

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
