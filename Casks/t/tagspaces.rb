cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.10.3"
  sha256 arm:   "1ac62a386c0f1e5f53686cbf8201e5ae721ee4acdb24fbb3053223692b26d548",
         intel: "d5d30c669cbe1bbe306cebbdc9c52545e434fa724e0ebddff4940e8ee18455ba"

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
