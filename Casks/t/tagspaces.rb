cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.5.2"
  sha256 arm:   "9942567c5a04ae764b4f2a7c18ffbfae1aa37606a073aa7565bd2c5e00252499",
         intel: "6bed8d485a635abaf916e3dc3b1e5d6d35d2cdc5e360a6c52f76756e07c04ee6"

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
