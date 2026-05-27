cask "elegoo-slicer" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.1.6"
  sha256 arm:   "968214dd1ee00784c8fed30ac90e22f7c81045b1f560e2fbc0ce5bb3b53da981",
         intel: "9dc3681869f44660fada57f67d380a9d90972f1e38c5e7d49c9ca43d3c952cec"

  url "https://github.com/ELEGOO-3D/ElegooSlicer/releases/download/v#{version}/ElegooSlicer_Mac_#{arch}_V#{version}.dmg"
  name "ElegooSlicer"
  desc "Open-source slicer for FDM 3D printers"
  homepage "https://github.com/ELEGOO-3D/ElegooSlicer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "ElegooSlicer.app"

  zap trash: [
    "~/Library/Application Support/ElegooSlicer",
    "~/Library/Caches/com.elegoo3d.elegoo-slicer",
    "~/Library/Preferences/com.elegoo3d.elegoo-slicer.plist",
    "~/Library/Saved Application State/com.elegootechsupport.elegoo-slicer.savedState",
  ]
end
