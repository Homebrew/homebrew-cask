cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.5.1"
  sha256 arm:   "57029d58a19c3f881ba935bdaa1a569d98fb3b5cdd23619088dfd238aa070d61",
         intel: "77b6559f6ecefe637c7d57ee63a4eba525104bcc7a166a0a46b2ddda1ebd044e"

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
