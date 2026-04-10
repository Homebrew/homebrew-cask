cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.10.5"
  sha256 arm:   "714461db9039b360a1824e57bd382c435c24cb45a3ae2f6cb126a455acc1b057",
         intel: "e48fdc5336c71ad6353064bb86db9cbc9e7b99c8700595b23a3a01280971fa7f"

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
