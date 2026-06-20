cask "orcaslicer" do
  version "2.4.0"
  sha256 "9a6ca1583ea9c7199a23b167a2c23398f0255f813cda0bfea5e9ab767a3f6c4d"

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
