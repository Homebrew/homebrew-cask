cask "mestrenova" do
  version "17.0.0-41178"
  sha256 "cfd315074516ca53cdaf691f3e12006e12433cf8ec3750991da3721cf2e35687"

  url "https://mestrelab.com/downloads/mnova/mac/MestReNova-#{version}.dmg"
  name "Mestrenova"
  desc "Processes and analyzes NMR, LC/GC/MS and other analytical chemistry data"
  homepage "https://mestrelab.com/"

  livecheck do
    url "https://mestrelab.com/download/"
    regex(/MestReNova-(\d+(?:\.\d+)+-\d+)\.dmg/i)
    strategy :page_match
  end

  depends_on macos: :big_sur

  app "MestReNova.app"

  zap trash: [
    "~/Library/Caches/com.mestrelab.MestReNova",
    "~/Library/HTTPStorages/com.mestrelab.MestReNova",
    "~/Library/Preferences/com.mestrelab.MestReNova.plist",
    "~/Library/Saved Application State/com.mestrelab.MestReNova.savedState",
  ]
end
