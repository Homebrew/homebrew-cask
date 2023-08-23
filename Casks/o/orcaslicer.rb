cask "orcaslicer" do
  arch arm: "arm64", intel: "x86_64"

  version "1.6.4"
  sha256 arm:   "4e4bf76ae1f22eb8bf5c11bc3478c04cd1a9cf5a5aeaab18643b74eb07bf9fb2",
         intel: "21ed4869a5f628aacfce48403cca00b028498292c8679d356f963e23a04aac00"

  url "https://github.com/SoftFever/OrcaSlicer/releases/download/v#{version}/OrcaSlicer_Mac_#{arch}_V#{version}.dmg"
  name "Orca Slicer"
  desc "G-code generator for 3D printers"
  homepage "https://github.com/SoftFever/OrcaSlicer"

  app "OrcaSlicer.app"

  zap trash: [
    "~/Library/Application Support/OrcaSlicer",
    "~/Library/Caches/com.softfever3d.orca-slicer",
    "~/Library/HTTPStorages/com.softfever3d.orcaslicer.binarycookies",
    "~/Library/Preferences/com.softfever3d.orca-slicer.plist",
    "~/Library/Saved Application State/com.softfever3d.orca-slicer.savedState",
    "~/Library/WebKit/com.softfever3d.orca-slicer",
  ]
end
