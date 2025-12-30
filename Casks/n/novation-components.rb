cask "novation-components" do
  version "1.61.3"
  sha256 :no_check

  url "https://components-updates.novationmusic.com/download/osx"
  name "Novation Components"
  desc "Manager and updater for Novation hardware"
  homepage "https://novationmusic.com/components/"

  livecheck do
    url "https://components-updates.novationmusic.com/download/osx"
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Components.app"

  zap trash: [
    "~/Library/Application Support/Components",
    "~/Library/Caches/com.novationmusic.circuitcomponents*",
    "~/Library/HTTPStorages/com.novationmusic.circuitcomponents",
    "~/Library/Preferences/com.novationmusic.circuitcomponents.plist",
  ]
end
