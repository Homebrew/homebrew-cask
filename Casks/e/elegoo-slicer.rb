cask "elegoo-slicer" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.3.4"
  sha256 arm:   "c19c29859aff1648dcd4cc4c554259b5079514b46ced098dd091faabd555b778",
         intel: "e634e1422066233bda735bdc1b503b766aa7a4bc7ba356f9c0d51398dc6b4175"

  url "https://github.com/ELEGOO-3D/ElegooSlicer/releases/download/v#{version}/ElegooSlicer_Mac_#{arch}_V#{version}.dmg"
  name "ElegooSlicer"
  desc "Open-source slicer for FDM 3D printers"
  homepage "https://github.com/ELEGOO-3D/ElegooSlicer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "ElegooSlicer.app"

  zap trash: [
    "~/Library/Application Support/ElegooSlicer",
    "~/Library/Caches/com.elegoo3d.elegoo-slicer",
    "~/Library/Preferences/com.elegoo3d.elegoo-slicer.plist",
    "~/Library/Saved Application State/com.elegootechsupport.elegoo-slicer.savedState",
  ]
end
