cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.7.1"
  sha256 arm:   "ee99437f8e5c0bf1536e1cf1f16e0f3c3172bde77a4e26de912a9ca0cf371edf",
         intel: "d81cef5007bb2ce75f8151f7affce41a9b478d71c0ef18af0a48cc04dd00e776"

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
