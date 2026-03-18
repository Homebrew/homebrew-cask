cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.10.2"
  sha256 arm:   "63a124f9df87eab058d59a664bcff0c265e5e35f2e5f53227d423fef7e111983",
         intel: "55a3b37de3389fc12febb21cf277bcc2ce46afe73a2da69da78f51b05c44a44e"

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
