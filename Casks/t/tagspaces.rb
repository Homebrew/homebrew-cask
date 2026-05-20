cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.12.1"
  sha256 arm:   "f7f4d5f5dff141c02087eda5b0113da6c773c9cc099a890efbcddfeb0fcb0f66",
         intel: "336834ddea8ffa56ee4a92e0cf990a1aa8f5a1c16e08feac839ae6651e3a87a5"

  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{arch}-#{version}.dmg",
      verified: "github.com/tagspaces/tagspaces/"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "TagSpaces.app"

  zap trash: [
    "~/Library/Application Support/TagSpaces",
    "~/Library/Preferences/org.tagspaces.desktopapp.plist",
    "~/Library/Saved Application State/org.tagspaces.desktopapp.savedState",
  ]
end
