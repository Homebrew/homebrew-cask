cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.2.27"
  sha256 arm:   "c17e6b92c1a37e5cfdba25b355fe44f8c8537c3008a513ea3a469b436cf2b204",
         intel: "e88f581a1df5afd5b37121ef8e247939d011ebf11142d9b39b99277e2862ec78"

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
