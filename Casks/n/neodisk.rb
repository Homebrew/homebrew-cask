cask "neodisk" do
  version "2.83.2"
  sha256 "9d66e314368b77e954c3368344f889210d3be8d0c3157a58511aeff59730082b"

  url "https://github.com/tkslucas/Neodisk/releases/download/v#{version}/Neodisk-#{version}.dmg"
  name "Neodisk"
  desc "Read-only disk space visualiser"
  homepage "https://neodisk.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
