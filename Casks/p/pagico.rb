cask "pagico" do
  version "10,20240926"
  sha256 "fa7f41ecb3dd6308b4dc02e44236ab98d2b5cc2053f86a514277556ec464c025"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.csv.second}.dmg"
  name "Pagico"
  desc "Tasks, files, and notes manager"
  homepage "https://www.pagico.com/"

  livecheck do
    url "https://www.pagico.com/api/pagico#{version.major}.macOS.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "Pagico.app"

  zap trash: [
    "~/Library/Application Scripts/com.pagico.mac.Pagico-Extension-for-Safari",
    "~/Library/Application Support/Pagico",
    "~/Library/Caches/com.pagico.mac",
    "~/Library/Containers/com.pagico.mac.Pagico-Extension-for-Safari",
    "~/Library/HTTPStorages/com.pagico.mac",
    "~/Library/PagicoHelpers",
    "~/Library/Preferences/com.pagico.mac.plist",
    "~/Library/WebKit/com.pagico.mac",
  ]
end
