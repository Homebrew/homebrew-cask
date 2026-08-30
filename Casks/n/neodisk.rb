cask "neodisk" do
  version "2.71.0"
  sha256 "627d7a7fbe51298f5751e730b27dba62c149b2b555dba2a486e606640fa1a5ff"

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
  depends_on arch: :arm64

  app "Neodisk.app"

  zap trash: [
    "~/Library/Application Support/Neodisk",
    "~/Library/Caches/com.lucastakayasu.Neodisk",
    "~/Library/HTTPStorages/com.lucastakayasu.Neodisk",
    "~/Library/Preferences/com.lucastakayasu.Neodisk.plist",
    "~/Library/Saved Application State/com.lucastakayasu.Neodisk.savedState",
  ]
end
