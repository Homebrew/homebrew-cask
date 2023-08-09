cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.7.17"
  sha256 arm:   "70987e976ec5fc84c610b47e77b592d09d5d8e395790879afabc2166d8bec1d2",
         intel: "949978cc71e3718c7f8034b8bbe9c3851dcbfb0f86d52ea6f00190f12ca64bdf"

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
