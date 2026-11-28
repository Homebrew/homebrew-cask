cask "orcaslicer" do
  version "2.5.3"
  sha256 "7bc16298bf452f6c497e639c7e87d7f91725c0758ba97828fb48282a129af7bc"

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
    "~/Library/Preferences/com.orcaslicer.OrcaSlicer.plist",
    "~/Library/Preferences/com.softfever3d.orca-slicer.plist",
    "~/Library/Saved Application State/com.softfever3d.orca-slicer.savedState",
    "~/Library/WebKit/com.softfever3d.orca-slicer",
  ]
end
