cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.6.4"
  sha256 arm:   "01078ae2ce35ab22c08062e8a93e4b90769f7eb4cf224eb20cd89bf8d71e9aea",
         intel: "26cfdaeab6a31495c41c6770edde8512abc3fc490fe0803a3f26dce3c36ec899"

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
