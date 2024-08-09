cask "pagico" do
  version "10,20240809"
  sha256 "565179b9ce78e7dee11d4c504e17d862c8f1437b2e74e54bea050f0dead5eea3"

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
