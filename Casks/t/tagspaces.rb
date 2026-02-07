cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.9.0"
  sha256 arm:   "28a3559f99c4efd3ab9d30b70bd02b03f11f185aa78e975b80e22710bf66bc41",
         intel: "6d35043998ed9d491329a0476637b5a466e881da3dd24837a7b0e4a0b2a39bf4"

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
