cask "orcaslicer" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.6.0"
  sha256 arm:   "abfc5e591d4f6ec7bed427629b3e15c7916bd39b35fa0c77617a40505c4a7384",
         intel: "b06034778e48d37165f9f68f175770d5e3bd3b30fbbd3bf993cf7c08fff0e384"

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
