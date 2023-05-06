cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.3.2"
  sha256 arm:   "1f85c9b476ff52f9c30ae5bb1a74ed8e98b9c6d28714080af8bd09fb6b9a50bf",
         intel: "3b876e40eebe6430de9659a4c4ce1b18c5941d0fb1d4e9bc491792e37f73914e"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/audacity/audacity/"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "Audacity.app"

  zap trash: [
    "~/Library/Application Support/audacity",
    "~/Library/Preferences/org.audacityteam.audacity.plist",
    "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
  ]
end
