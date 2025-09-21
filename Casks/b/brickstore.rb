cask "brickstore" do
  version "2025.9.1"
  sha256 "94e2f94a199798a8320f58290afbae7009fa323523e14daba2b2e6e11ea76e78"

  url "https://github.com/rgriebl/brickstore/releases/download/v#{version}/macOS-BrickStore-#{version}.dmg",
      verified: "github.com/rgriebl/brickstore/"
  name "BrickStore"
  desc "BrickLink offline management tool"
  homepage "https://www.brickstore.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "BrickStore.app"

  zap trash: [
    "~/Library/Preferences/de.brickforge.brickstore.plist",
    "~/Library/Preferences/org.brickstore.BrickStore.plist",
    "~/Library/Saved Application State/de.brickforge.brickstore.savedState",
  ]
end
