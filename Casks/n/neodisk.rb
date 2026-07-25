cask "neodisk" do
  version "2.70.2"
  sha256 "15107271c56c4512e11c5634ea3768295e360a624e090231be0cfada56b7aa6b"

  url "https://github.com/tkslucas/Neodisk/releases/download/v#{version}/Neodisk-#{version}.dmg",
      verified: "github.com/tkslucas/Neodisk/"
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
