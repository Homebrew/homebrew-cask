cask "orcaslicer" do
  arch arm: "arm64", intel: "x86_64"

  version "2.3.0"
  sha256 arm:   "6d040fc8f72f0553746b73bd7f676e4c3ecd7dded5bfce74817670fce6f2edb6",
         intel: "1b64454a2219aa1a9391e34121e948f32e6b200ea3044faa666d0768bf0f26e6"

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
