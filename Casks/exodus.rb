cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.1.16"
  sha256 arm:   "b8c7157f180dd0cdf95e4b5edeb4825d769fbc85a8e647fa32d74978329fd82b",
         intel: "044568c6c1dc751f37a61e630d718c0c55fbb532864f73317892e697f1862f7a"

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
