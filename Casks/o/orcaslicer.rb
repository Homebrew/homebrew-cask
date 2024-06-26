cask "orcaslicer" do
  arch arm: "arm64", intel: "x86_64"

  version "2.1.1"
  sha256 arm:   "3dab4044551b962d9d0e08fe9d78c8898ca26b2dad3cb4b2b342338098a47dad",
         intel: "bd7ce4528fd9568663d37987454d1bc79d2ee71f831455d63a46956f1a9b7893"

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
