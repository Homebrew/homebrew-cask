cask "inmusic-software-center" do
  version "1.39.2"
  sha256 "373bb1ab5a67f97ed2723460d69d74848cf616926d8900de1abc7640f13042c6"

  url "https://cdn.inmusicbrands.com/Software/SI04/inMusic%20Software%20Center-darwin-universal-#{version}.zip"
  name "inMusic Software Center"
  desc "Administration tool for inMusic brand creative software"
  homepage "https://www.airmusictech.com/downloads/"

  livecheck do
    url "https://inmusic.to/ISCMAC"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :monterey

  app "inMusic Software Center.app"

  zap trash: [
    "~/Library/Application Support/com.inmusicbrands.softwareunlock",
    "~/Library/Application Support/inMusic Software Center",
    "~/Library/Caches/com.electron.inmusic-software-center",
    "~/Library/Caches/com.electron.inmusic-software-center.ShipIt",
    "~/Library/HTTPStorages/com.electron.inmusic-software-center",
    "~/Library/Preferences/com.electron.inmusic-software-center.plist",
    "~/Library/Saved Application State/com.electron.inmusic-software-center.savedState",
  ]
end
