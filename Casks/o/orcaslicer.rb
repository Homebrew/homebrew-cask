cask "orcaslicer" do
  arch arm: "arm64", intel: "x86_64"

  version "1.9.1"
  sha256 arm:   "28db87f6554aec0d4297ba4b7d12a3bf93bd90964e22245483d7239d1f967ecc",
         intel: "0dc96b0b53ae9b7d09956fde812436302dcc01db7757b25ee6b552597911ed47"

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
