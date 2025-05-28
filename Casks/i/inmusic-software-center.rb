cask "inmusic-software-center" do
  version "1.32.0"
  sha256 "195e3a9e97374e58ae34862ef920c5a7cf28409cb77129d877e79382fcabfb07"

  url "https://cdn.inmusicbrands.com/Software/SI04/inMusic%20Software%20Center-darwin-universal-#{version}.zip",
      verified: "cdn.inmusicbrands.com/Software/SI04/"
  name "inMusic Software Center"
  desc "Administration tool for inMusic brand creative software"
  homepage "https://www.airmusictech.com/downloads/"

  livecheck do
    url "https://inmusic.to/ISCMAC"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
