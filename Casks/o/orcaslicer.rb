cask "orcaslicer" do
  arch arm: "arm64", intel: "x86_64"

  version "2.1.0"
  sha256 arm:   "0b7e752360dfe79e4272b812e5ba31f346fa2fdd4a120d90694313b217bd10e8",
         intel: "3d5ee8e535d7b01d1888bfa8b7a304e161ddc45d908b17b4cf234f7c7813cfbd"

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
