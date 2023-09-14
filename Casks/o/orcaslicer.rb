cask "orcaslicer" do
  arch arm: "arm64", intel: "x86_64"

  version "1.7.0"
  sha256 arm:   "3c92390cec5d1e61c539f70b886600709b087b067172c6aab1613323ad8c18bd",
         intel: "74c40fe5aa3898b307b20c0dd47d5c248993dc08205b349b406e8e74c5e17ba3"

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
