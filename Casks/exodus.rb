cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.4.10"
  sha256 arm:   "0f576ea8ca7226a67645908067cd6583428a8721c8f530a14e6fc032eb9bbb4f",
         intel: "592bab4a5df6123c3c524dd2035a7096810cde80496fd4566158ddc39507c6d9"

  url "https://downloads.exodus.com/releases/exodus-#{arch}-#{version}.dmg"
  name "Exodus"
  desc "Desktop wallet for cryptocurrency assets"
  homepage "https://www.exodus.com/"

  livecheck do
    url "https://www.exodus.com/releases/"
    regex(%r{/hashes[._-]exodus[._-]?v?(\d+(?:\.\d+)+)\.txt}i)
  end

  auto_updates true

  app "Exodus.app"

  zap trash: [
    "~/Library/Application Support/Exodus",
    "~/Library/Preferences/com.electron.exodus.helper.plist",
    "~/Library/Preferences/com.electron.exodus.plist",
    "~/Library/Saved Application State/com.electron.exodus.savedState",
  ]
end
