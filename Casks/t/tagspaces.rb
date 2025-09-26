cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.6.2"
  sha256 arm:   "5e383faee89e129b94c17dc85b78ffc95c0924e53c6391c9528fbe48dc5dfca4",
         intel: "e4c33cd0e354f920e49afe781c727f7baeb726528a70610193e07827d2c97d84"

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
