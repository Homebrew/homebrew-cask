cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "22.10.21"
  sha256 arm:   "0e17c683169b66522a82da76be78306cee342820e4c878433bb199ea549044d8",
         intel: "ce8eb28a05412a5549d5769f9df358e418e3239582a761cc7b3e234007cf818e"

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
