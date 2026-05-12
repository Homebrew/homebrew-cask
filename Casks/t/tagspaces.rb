cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.11.4"
  sha256 arm:   "7f0c469ba2ba43c5adc186735e0d9f1cf1707e7e6274f058dc28e08de1ff707a",
         intel: "5b1f0ac572bd033465278c78883d5f0645e462a01c8fc108a8779d2fcb8b8266"

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
