cask "orcaslicer" do
  version "2.4.1"
  sha256 "0d8d6fd8b5d18dc9b35345b5c1f10582ad54a8c22d29e084d37512964a9d1d19"

  url "https://github.com/OrcaSlicer/OrcaSlicer/releases/download/v#{version}/OrcaSlicer_Mac_universal_V#{version}.dmg"
  name "Orca Slicer"
  desc "G-code generator for 3D printers"
  homepage "https://github.com/OrcaSlicer/OrcaSlicer"

  conflicts_with cask: "orcaslicer@nightly"
  depends_on macos: :big_sur

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
