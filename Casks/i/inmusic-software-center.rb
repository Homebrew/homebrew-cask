cask "inmusic-software-center" do
  version "1.37.1"
  sha256 "95f27c881167596337070d434a8470157512d1db0b28b5e77b5d8b07242cf0fd"

  url "https://cdn.inmusicbrands.com/SI04/#{version.no_dots}/inMusic%20Software%20Center-darwin-universal-#{version}.zip",
      verified: "cdn.inmusicbrands.com/SI04/"
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
