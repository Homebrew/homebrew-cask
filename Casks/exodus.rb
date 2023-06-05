cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.6.5"
  sha256 arm:   "be6eeaba5e07a9ac11b47ec2b9c3ce9bf0e7221e9cfd4407bc853ab248abec1e",
         intel: "4aad8cf21dfb8150c8d57ac80ecb3dd088d246ca8c12afcaf6dc436457497a3e"

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
