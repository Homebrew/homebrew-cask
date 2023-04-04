cask "orcaslicer" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.5.0"
  sha256 arm:   "c04408b15b2ba92d026d5c07db618ebfc77e69e9de64fad30f4bba5e93ffc29b",
         intel: "72ccf6631f70a05e99f4529f30e3a6ab5b38022720752f0028498c3796c51f62"

  url "https://github.com/SoftFever/OrcaSlicer/releases/download/v#{version}/OrcaSlicer_V#{version}_Mac_#{arch}.zip"
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
