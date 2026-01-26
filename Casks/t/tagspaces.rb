cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.8.1"
  sha256 arm:   "91f2b5e6ad2cc964d55bc2dc1771d2b380a7c7d36c98e265df34736ba0ce5dde",
         intel: "fc357137c63a4d670e9955b61fbc9b78fc0eae5033c8eb13e59aea53da8353d3"

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
