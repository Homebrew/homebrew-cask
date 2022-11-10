cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "22.11.9"
  sha256 arm:   "4a8809947ba5e905ec4adff5aa0a2b4a7676d27af65d68e1c89820746f6cb3d3",
         intel: "b46eeaf27f87c549c9ed1faf8a5781f848f32c269307e33fa08518e102eebf81"

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
