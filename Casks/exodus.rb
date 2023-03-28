cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.3.27"
  sha256 arm:   "513fb406a796581a8ffe2f148431100abf678f433466a33be9ef01543fdab71f",
         intel: "6b630bb4ec33ff0cd6c19742cef5c90e57b20fe0cce9f0146ddd39dbfc9e2d41"

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
