cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.4.24"
  sha256 arm:   "f78c73db22bc1b533eb637de50e8c0464ce32fe1a1b96e416b13a8b66e67985f",
         intel: "5b45e832202b81bffc736887936448c6b35a336694eb0a2ed4587cd6fda03e2b"

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
