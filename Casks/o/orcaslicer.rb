cask "orcaslicer" do
  version "2.4.2"
  sha256 "e15e7bb1b66214ec6e96b169b388004179c4f5f705effcdaf8c80d4992ee0366"

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
