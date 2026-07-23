cask "neodisk" do
  version "2.70.1"
  sha256 "675722060ce23b9996a2fe90bd7acfca7fbca8d2ec2ed58b1711e2d24a9e6077"

  url "https://github.com/tkslucas/Neodisk/releases/download/v#{version}/Neodisk-#{version}.dmg",
      verified: "github.com/tkslucas/Neodisk/"
  name "Neodisk"
  desc "Read-only disk space visualizer"
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
