cask "pagico" do
  version "10,20250716"
  sha256 "798106a72a6b1b13d9318bc18d83e5bbbd31f19471cf7a90b85fa2a60d7e5bd7"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.csv.second}.dmg"
  name "Pagico"
  desc "Tasks, files, and notes manager"
  homepage "https://www.pagico.com/"

  livecheck do
    url "https://www.pagico.com/api/pagico#{version.major}.macOS.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Pagico.app"

  zap trash: [
    "~/Library/Application Scripts/com.pagico.mac.Pagico-Extension-for-Safari",
    "~/Library/Application Support/Pagico",
    "~/Library/Caches/com.pagico.mac",
    "~/Library/Containers/com.pagico.mac.Pagico-Extension-for-Safari",
    "~/Library/HTTPStorages/com.pagico.mac",
    "~/Library/PagicoHelpers",
    "~/Library/Preferences/com.pagico.mac.plist",
    "~/Library/Saved Application State/com.pagico.mac.savedState",
    "~/Library/WebKit/com.pagico.mac",
  ]
end
