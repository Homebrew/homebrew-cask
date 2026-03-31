cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.10.4"
  sha256 arm:   "8e69e15a631235941c5358a146bf3c5b73c19b19778ceb39fdbe4cfa35fa8261",
         intel: "568553db88d8a1a2f068bbb8c26a25a7697e5e37d5a9b0a10201a416c2e05f1c"

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
