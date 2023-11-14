cask "pagico" do
  version "10,20231114"
  sha256 "dfd7597cb508116c04a9296275a7a236cb29f07cf1413aae1e7e81ccc581d966"

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
