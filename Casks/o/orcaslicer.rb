cask "orcaslicer" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.0"
  sha256 arm:   "3af72e3c47b9989e77a56af9464a6904a9bfbba7251f881d94c6ae9b27ec0c8b",
         intel: "5db95e189449a07850fed3d2535b9886c283712a639cd12d7e5cedca7049e75b"

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
