cask "orcaslicer" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.0"
  sha256 arm:   "18e22e7c01bcb3246455e3b501a52d580d65fd4ae5de6c91477396cdc393e7a6",
         intel: "f37ca6904df4aad771aa08345bdb843c3869abc4ed11935744517b6d6c602a75"

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
