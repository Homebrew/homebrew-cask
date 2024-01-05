cask "orcaslicer" do
  arch arm: "arm64", intel: "x86_64"

  version "1.9.0"
  sha256 arm:   "08d0ed089fdb88c6b7f049828a355cbb1419a30ef2c9318fa12d2a9186782380",
         intel: "3246b04e8b139cdc8dc682ea1b490f7d67bb200226a5a2f5cb8fa43a5c313c8e"

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
