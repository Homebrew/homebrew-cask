cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.5.3"
  sha256 arm:   "5cb8c7b4e88324e16f0026336118e915fbd29980c2f4c33f0dca429ab49abccf",
         intel: "9e4d41d286a185181f15940d461837be27ffcb889250e13858073c0b22048664"

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
