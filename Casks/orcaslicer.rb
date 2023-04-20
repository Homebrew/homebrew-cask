cask "orcaslicer" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.6.1"
  sha256 arm:   "50ca8fddfd67dce4da0e79aada27321a35c880a59990a279372cd3e275a7d92b",
         intel: "7e024f36eb33a1823c58f3603fc8da1bf55f5853176f3c45fa39b5b16373ec50"

  url "https://github.com/SoftFever/OrcaSlicer/releases/download/v#{version}/OrcaSlicer_V#{version}_Mac_#{arch}.zip"
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
