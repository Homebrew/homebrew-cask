cask "inmusic-software-center" do
  version "1.34.0"
  sha256 "add183cdac42ef781925eb072fb799d4ad16dfdb8d2bb5d929a46b741f4738a8"

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
