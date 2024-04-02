cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.7.11"
  sha256 arm:   "f0f006ff36589d712d63bbd3dc3771921a90b3e9c361283a44251db9bfe35fd6",
         intel: "ece6c80da561b1f4290867e59fb15b206d11e2800077344bb516e667285f8e59"

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
