cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.10.1"
  sha256 arm:   "329d8792ed68cd3ec8def6b784da21685189955c929e354672eeddc0e0eec87d",
         intel: "afafd74dc3b1e12d4e5cb6475972be0609394a36865f56ebc387df23829403c0"

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
