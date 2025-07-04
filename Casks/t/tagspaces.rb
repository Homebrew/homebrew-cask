cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.5.1"
  sha256 arm:   "d09ee18dffae3f01ba39829e7a4185a4ae07974b5370f7cc209b5284a820ae57",
         intel: "4565b3eba853716b1161e05e760f1f5896faafd233b52caf00aa222ed8e22774"

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
