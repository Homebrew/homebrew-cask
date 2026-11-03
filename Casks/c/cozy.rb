cask "cozy" do
  arch arm: "arm64", intel: "x64"

  version "1.7.3"
  sha256 arm:   "fd23b3c62afdff4c8eb489be5d4719fee081bf27106e23cf74ee05b8c6aec8fc",
         intel: "8d0373e414c10f1dc228f6c9dc87a4b193314aba6968b866e0caf67719d2ecf0"

  url "https://cozyjournal.app/downloads/cozy-#{version}-#{arch}.dmg"
  name "Cozy"
  desc "Private journal that keeps entries as plain files on disk"
  homepage "https://cozyjournal.app/"

  livecheck do
    url "https://github.com/albertogalca/cozy-releases/releases/latest/download/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Cozy.app"

  uninstall quit: "com.cantimplorastudio.cozy"

  zap trash: [
    "~/Library/Application Support/cozy",
    "~/Library/Caches/cozy-updater",
    "~/Library/HTTPStorages/com.cantimplorastudio.cozy",
    "~/Library/Logs/cozy",
    "~/Library/Preferences/com.cantimplorastudio.cozy.plist",
  ]
end
