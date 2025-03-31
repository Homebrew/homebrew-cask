cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.4.4"
  sha256 arm:   "6070a15bbee703294ef081b7f51fce63f28a3b37d31b63a94f58de98d92ef2a0",
         intel: "7e81726694718831aa6cd51d15f9254397ad39e6f9bfdea644d7722d499a8e3f"

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
