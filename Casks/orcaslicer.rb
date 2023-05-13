cask "orcaslicer" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.6.2"
  sha256 arm:   "fbb2bba0bb21e6d4ec388625e4143445bb642ef5af5f9a9b851d072367967697",
         intel: "8e1ae60a9cf1d28e619374f18a1eed5fb8f152415a6af314284fcb4dcebbe3d4"

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
