cask "anycubic-slicer-next" do
  arch arm: "arm64", intel: "x86_64"

  version "1.3.9.2,20260122"
  sha256 arm:   "e9929f02aa6fde2ba0ad0233574e4cfb811ce5d3b5363e6e1ac84de01b5b8bad",
         intel: "4297dbdd7923ccb722cbd75be86f4c510bed823f6c599c094e078c2c57926371"

  on_arm do
    url "https://cdn.cloud-universe.anycubic.com/file/2026/01/22/dmg/176908166350681000/develop_codesign_#{version.csv.second}165554_AnycubicSlicerNext_arm64.dmg"
  end
  on_intel do
    url "https://cdn.cloud-universe.anycubic.com/file/2026/01/22/dmg/176908189295448700/develop_codesign_#{version.csv.second}165151_AnycubicSlicerNext_x86_64.dmg"
  end

  name "Anycubic Slicer Next"
  desc "Open-source slicer for FDM 3D printers based on OrcaSlicer"
  homepage "https://www.anycubic.com/slicerNextDownload"

  livecheck do
    url "https://www.anycubic.com/api/navigate/software"
    strategy :json do |json|
      software = json["data"]&.find { |s| s["type"] == 4 }
      next unless software

      win_url = software["win_down_url"]
      match = win_url&.match(/AnycubicSlicerNext[_-](\d+(?:\.\d+)+)[_-](\d{8})/i)
      next unless match

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "AnycubicSlicerNext.app"

  zap trash: [
    "~/Library/Application Support/AnycubicSlicerNext",
    "~/Library/Caches/com.anycubic.slicernext",
    "~/Library/Preferences/com.anycubic.slicernext.plist",
    "~/Library/Saved Application State/com.anycubic.slicernext.savedState",
  ]
end
