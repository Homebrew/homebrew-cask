cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "22.11.21"
  sha256 arm:   "faf11ddf8b5972f779c762ed245b5b492f3e9f75114565b26979b7e8eaf7b0f5",
         intel: "f4825ac1b26c16f103399f756bea174270a9cc2e27eff1eb27d47b317a22b53d"

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
