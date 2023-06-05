cask "orcaslicer" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.6.3"
  sha256 arm:   "0e06f910d28a64d615e95fa54299c02a6948cb0e6be9c8d29a6c4db5d1ca12fc",
         intel: "33fc669025acbaf8ad4fe7a10d80c8af396d2c56315f607f59910e1a6515eb59"

  url "https://github.com/SoftFever/OrcaSlicer/releases/download/v#{version}/OrcaSlicer_V#{version}_Mac_#{arch}_signed.zip"
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
