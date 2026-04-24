cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.11.2"
  sha256 arm:   "f5ac999ad5bfac67632f45e8d4bff6cd6651934724944e50363ec8037534a1ef",
         intel: "d1ff3eff042f4280723e6db2804635a99fb8731f5ee4e7cf73dfcb2745d4f957"

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
