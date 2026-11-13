cask "neodisk" do
  version "2.91.0"
  sha256 "6c5bb7b5620994203d8b7d0680110ef0c61937c62c3b0e42da28808f781767b6"

  url "https://github.com/tkslucas/Neodisk/releases/download/v#{version}/Neodisk-#{version}.dmg"
  name "Neodisk"
  desc "Read-only disk space visualiser"
  homepage "https://neodisk.app/"

  auto_updates true
  depends_on macos: :sonoma

  app "Neodisk.app"

  zap trash: [
    "~/Library/Application Support/Neodisk",
    "~/Library/Caches/com.lucastakayasu.Neodisk",
    "~/Library/HTTPStorages/com.lucastakayasu.Neodisk",
    "~/Library/Preferences/com.lucastakayasu.Neodisk.plist",
    "~/Library/Saved Application State/com.lucastakayasu.Neodisk.savedState",
  ]
end
