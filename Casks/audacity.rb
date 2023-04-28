cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.3.1"
  sha256 arm:   "b06126b34a8011c47c36c738587ef100c40013fabb3c974f2d8cb5c5eca88e74",
         intel: "2ecd1f8be1d976eac4bc2fa3fd893fea8f40ec856cd7e8d913c35ba33f62396d"

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
