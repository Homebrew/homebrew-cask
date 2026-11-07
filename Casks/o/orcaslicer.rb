cask "orcaslicer" do
  version "2.5.0"
  sha256 "061e0c6ff104c37655c83190725ac2420960f23c39b56aae9b546e6c542995d5"

  url "https://github.com/OrcaSlicer/OrcaSlicer/releases/download/v#{version}/OrcaSlicer_Mac_universal_V#{version}.dmg"
  name "Orca Slicer"
  desc "G-code generator for 3D printers"
  homepage "https://github.com/OrcaSlicer/OrcaSlicer"

  conflicts_with cask: "orcaslicer@nightly"
  depends_on :macos

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
