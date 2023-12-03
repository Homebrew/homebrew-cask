cask "orcaslicer" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.1"
  sha256 arm:   "9743db8ad3ec2203b685afca588e9c7176804939cc66960f8ef7790f5d773793",
         intel: "7e5f5826902b39e68d8d4bf94b5e12000527b857d1cc6f561326c33aaeb425b3"

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
